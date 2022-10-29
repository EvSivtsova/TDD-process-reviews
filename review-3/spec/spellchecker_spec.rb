require 'SpellChecker'

describe 'SpellChecker' do
  it 'is an instance of SpellChecker and initializing with word_bank' do
    word_bank = []
    spellchecker = SpellChecker.new(word_bank)
    expect(spellchecker).to be_an_instance_of(SpellChecker)
  end
end