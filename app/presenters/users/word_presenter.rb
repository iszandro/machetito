# frozen_string_literal: true

module Users
  class WordPresenter
    delegate :translations, to: :@word
    delegate :partial, :title, :subtitle, to: :presenter

    PRESENTERS = {
      Kanji: Users::Words::KanjiPresenter
    }.freeze

    def initialize(word)
      @word = word
    end

    def presenter
      @presenter ||= presenter_class.new(wordable, @word)
    end

    def title
      wordable.name
    end

    def type
      @word.wordable_type
    end

    private

    def presenter_class
      PRESENTERS[type.to_sym] || Users::Words::WordPresenter
    end

    def wordable
      @wordable ||= @word.wordable
    end
  end
end
