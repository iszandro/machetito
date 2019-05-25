class HiraganaStrategy
  def initialize(word)
    @word = word
  end

  def valid?(value)
    @word.name == value
  end
end
