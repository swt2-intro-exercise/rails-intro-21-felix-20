describe "author", type: :model do
  it "should create a new author with first name, last name and homepage withour error" do
    author = Author.new("Alan", "Turing", "http://wikipedia.org/Alan_Turing")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
    expect(author.name()).to.eq("Alan Turing")
  end
end