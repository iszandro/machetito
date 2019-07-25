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
      return "#{@word.wordable.name} (#{examples})" if examples?

      @word.wordable.name
    end

    def to_model
      @word
    end

    def subtitle
      @word.wordable.meta['kanji']
    end

    private

    def examples?
      @word.wordable.meta['examples'].present?
    end

    def examples
      @word.wordable.meta['examples']
    end
  end
end
