# frozen_string_literal: true

module Quizzes
  class MeaningPresenter
    def initialize(word)
      @word = word
    end

    def partial
      'meaning'
    end

    def title
      @word.wordable.name
    end

    def to_model
      @word
    end

    def subtitle
      @word.wordable.meta['kanji']
    end
  end
end
