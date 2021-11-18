require 'rails_helper'

describe "edit author page", type: :feature do

  author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
  author.save

  it "should exist at 'edit_author_path' and render withour error" do
    visit edit_author_path 1
  end

  it "should have text inputs for an author's first name, last name, and homepage" do
    visit edit_author_path 1
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should fill the form and saves a edit author to the database" do
    visit edit_author_path 1
    page.fill_in 'author[first_name]', with: 'Alanian'
    page.fill_in 'author[last_name]', with: 'Turinging'
    page.fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'
    find('input[type="submit"]').click
  end

  it "should show an 'error' message when a user tries to submit an author without last name" do
    visit edit_author_path 1
    page.fill_in 'author[first_name]', with: 'Alan'
    page.fill_in 'author[last_name]', with: ''
    page.fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'
    find('input[type="submit"]').click
    expect(page).to have_text('error')
  end

  it "should exist a link from the authors/index page to the edit page" do
    visit authors_index_path
    expect(page).to have_link 'Edit', href: (edit_author_path 1)
  end
end