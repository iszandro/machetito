class HiraganaStrategy
  def initialize(word)
    @word = word
  end

  def valid?(value)
    @word.wordable.name == value
  end
end
