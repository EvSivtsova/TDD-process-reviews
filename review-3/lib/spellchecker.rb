class SpellChecker
  def initialize(word_bank)
    @word_bank = word_bank
  end

  def check_spelling(sentence)
    word_array = sentence.split
    new_sentence = []
    word_array.map do |word|
      checked_word = @word_bank.include?(word.downcase) ? word : "~#{word}~"
      new_sentence << checked_word
    end
    new_sentence.join(' ')
  end

  # def check_spelling(word_array, new_sentence)
  #   word_array = sentence.split
  #   new_sentence = []
  #   word_array.map do |word|
  #     checked_word = @word_bank.include?(word.downcase) ? word : "~#{word}~"
  #     new_sentence << checked_word
  #   end
  #   new_sentence.join(' ')
  # end
end
