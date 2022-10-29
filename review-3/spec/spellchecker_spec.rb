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

    it 'returns "these these these" when the string is "these these these"' do
      word_bank = ['these']
      spellchecker = SpellChecker.new(word_bank)
      sentence = 'these these these'
      result = spellchecker.check_spelling(sentence)

      expect(result).to eq 'these these these'
    end
  end

  context 'the words in the string are incorrect' do
    it 'returns "~thsee~" when the sentence is "thsee"' do
      word_bank = ['these']
      spellchecker = SpellChecker.new(word_bank)
      sentence = 'thsee'
      result = spellchecker.check_spelling(sentence)

      expect(result).to eq '~thsee~'
    end

    it 'returns "~thsee~ ~thsee~" when the sentence is "thsee thsee"' do
      word_bank = ['these']
      spellchecker = SpellChecker.new(word_bank)
      sentence = 'thsee thsee'
      result = spellchecker.check_spelling(sentence)

      expect(result).to eq '~thsee~ ~thsee~'
    end

    it 'returns "~thsee~ ~thsee~ ~thsee~" when the sentence is "thsee thsee thsee"' do
      word_bank = ['these']
      spellchecker = SpellChecker.new(word_bank)
      sentence = 'thsee thsee thsee'
      result = spellchecker.check_spelling(sentence)

      expect(result).to eq '~thsee~ ~thsee~ ~thsee~'
    end
  end

  context 'the words are submitted in different cases' do
    it 'returns "these" when the string is "These"' do
      word_bank = ['these']
      spellchecker = SpellChecker.new(word_bank)
      sentence = 'These'
      result = spellchecker.check_spelling(sentence)

      expect(result).to eq 'These'
    end
  end


end
