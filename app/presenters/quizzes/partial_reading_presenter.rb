# frozen_string_literal: true

module Quizzes
  class PartialReadingPresenter
    def initialize(word)
      @word = word
    end

    def partial
      'partial_reading'
    end

    def title
      @word.wordable.name
    end

    def to_model
      @word
    end
  end
end
