require 'find_replace'
require 'rspec'


describe "String#find_replace" do

  it 'replaces a word'  do
    expect(("hello world").find_replace("world", "universe")).to eq("hello universe")
  end
end
