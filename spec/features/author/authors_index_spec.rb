require 'rails_helper'

describe "author index page", type: :feature do
  it "should exist at 'author_index_path and render withour error" do
    visit author_index_path
  end

  it "should have a link to the new author form" do
    visit author_index_path
    expect(page).to have_link 'New', href: author_index_path
  end

  it "should have a table on it" do
    visit author_index_path
    expect(page).to have_tag('table')
  end
end