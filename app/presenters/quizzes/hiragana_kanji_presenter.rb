# frozen_string_literal: true

module Quizzes
  class HiraganaKanjiPresenter
    def initialize(word)
      @word = word
    end

    def partial
      'hiragana_kanji'
    end

    def title
      return @word.wordable.name if @word.wordable_type == 'Kanji'
      @word.wordable.meta['kanji']
    end

    def to_model
      @word
    end
  end
end
