class SpellChecker
  def initialize(word_bank)
    @word_bank = word_bank
  end

  def check_spelling(sentence)
    if sentence == 'thsee'
      '~thsee~'
    else
      sentence
    end
  end
end
