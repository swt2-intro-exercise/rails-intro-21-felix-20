require 'rails_helper'

describe "author index page", type: :feature do
  it "should exist at 'author_index_path and render withour error" do
    visit authors_index_path
  end

  it "should have a link to the new author form" do
    visit authors_index_path
    expect(page).to have_link 'New', href: new_author_path
  end

  it "should have a table Headings Name and Homepage on it" do
    visit authors_index_path
    expect(page).to have_text("Name")
    expect(page).to have_text("Homepage")
  end

  it "should have a link to delete an author" do
    visit authors_index_path

    author = author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
    author.save

    count_before_delete = Author.count

    find('Delete').click
    
    assert count_before_delete > Author.count
end