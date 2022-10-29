require 'SpellChecker'

describe 'SpellChecker' do
  it 'is an instance of SpellChecker and initializing with word_bank' do
    word_bank = []
    spellchecker = SpellChecker.new(word_bank)
    expect(spellchecker).to be_an_instance_of(SpellChecker)
  end

  context 'when the words in the string are correct' do
    it 'returns "these" when the string is "these"' do
      word_bank = ['these']
      spellchecker = SpellChecker.new(word_bank)
      sentence = 'these'
      result = spellchecker.check_spelling(sentence)

      expect(result).to eq 'these'
    end

    it 'returns "these these" when the string is "these these"' do
      word_bank = ['these']
      spellchecker = SpellChecker.new(word_bank)
      sentence = 'these these'
      result = spellchecker.check_spelling(sentence)

      expect(result).to eq 'these these'
    end
  end
end
