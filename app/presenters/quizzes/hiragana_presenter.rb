# frozen_string_literal: true

module Quizzes
  class HiraganaPresenter
    def initialize(word)
      @word = word
    end

    def hiragana?
      !katakana?
    end

    def katakana?
      @word.wordable.meta['katakana']
    end

    def kana_input_class
      return 'wanakana-katakana input' if katakana?

      'wanakana input'
    end

    def partial
      'hiragana'
    end

    def title
      return "#{translation.wordable.name} (#{examples})" if examples?

      translation.wordable.name
    end

    def to_model
      @word
    end

    private

    def examples?
      translation.wordable.meta['examples'].present?
    end

    def examples
      translation.wordable.meta['examples']
    end

    def translation
      @_translation ||= @word.translations.shuffle.first
    end
  end
end
