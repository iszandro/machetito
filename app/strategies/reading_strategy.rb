class ReadingStrategy
  def initialize(word)
    @word = word
  end

  def valid?(value)
    @word.wordable.readings.include?(value)
  end
end
