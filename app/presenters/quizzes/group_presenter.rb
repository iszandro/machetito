# frozen_string_literal: true

module Quizzes
  class GroupPresenter
    def initialize(word)
      @word = word
    end

    def partial
      'group'
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
