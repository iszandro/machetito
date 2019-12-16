# frozen_string_literal: true

class PartialReadingStrategy
  def initialize(word)
    @word = word
  end

  def valid?(value)
    @word.wordable.include?(value)
  end
end
