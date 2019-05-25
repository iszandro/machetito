class MeaningStrategy
  def initialize(word)
    @word = word
  end

  def valid?(value)
    @word.translations.find { |translation| translation.wordable.name == value }
  end
end
