require 'rails_helper'

describe "author index page", type: :feature do
  it "should exist at 'author_index_path and render withour error" do
    visit authors_index_path
  end

  it "should have a link to the new author form" do
    visit authors_index_path
    expect(page).to have_link 'New', href: new_author_path
  end

  it "should have a table with Name and Homepage on it" do
    visit authors_index_path
    expect(page).to have_xpath('//*/tr[1]/th[1][text()="Name"]')
    expect(page).to have_xpath('//*/tr[1]/th[2][text()="Homepage"]')
  end

  it "should have a link to delete an author" do
    author = author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
    author.save

    visit authors_index_path

    count_before_delete = Author.count

    find('//*/tr[2]/td[5]/a[text()="Delete"]').click
    
    assert count_before_delete > Author.count
  end
end