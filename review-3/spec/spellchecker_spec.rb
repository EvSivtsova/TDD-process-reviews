require 'SpellChecker'

describe 'SpellChecker' do
  it "is an instance of SpellChecker" do
    spellchecker = SpellChecker.new

    expect(spellchecker).to be_an_instance_of(SpellChecker)
  end
end