class SpellChecker
  def initialize(word_bank)
    @word_bank = word_bank
  end

  def check_spelling(sentence)
    word_array = sentence.split
    new_sentence = []
    word_array.map do | word |
      if @word_bank.include?(word)
        new_sentence << word
      else 
        new_sentence << '~' + word + '~'
      end
    end
    new_sentence.join(' ')
  end
end
