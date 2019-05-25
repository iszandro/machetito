class ReadingStrategy
  def initialize(word)
    @word = word
  end

  def valid?(value)
    @word.readings.include?(value)
  end
end
