describe "author", type: :model do
  
  it "should create a new author with first name, last name and homepage withour error" do
    author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
    expect(author.name()).to eq("Alan Turing")
  end

  it "should be possible to create an author without specified homepage without error" do
    author = Author.new(first_name: "Alan", last_name: "Turing")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq(nil)
  end

  it "should not validate an author without last_name" do
    author = Author.new(first_name: "Alan")
    expect(author).to_not be_valid
  end
end