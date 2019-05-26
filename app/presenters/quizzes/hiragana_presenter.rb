# frozen_string_literal: true

module Quizzes
  class HiraganaPresenter
    def initialize(word)
      @word = word
    end

    def partial
      'hiragana'
    end

    def title
      translation.wordable.name
    end

    def to_model
      @word
    end

    private

    def translation
      @_translation ||= @word.translations.shuffle.first
    end
  end
end
