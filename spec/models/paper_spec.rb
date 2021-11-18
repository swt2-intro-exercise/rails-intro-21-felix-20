describe "author", type: :model do
  
  it "should have an empty author list" do
    paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460", year: 1950)
    expect(paper[:authors]).to be_nil
  end
end