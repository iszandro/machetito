# frozen_string_literal: true

module Users
  module Words
    class WordPresenter
      def initialize(wordable, word)
        @wordable = wordable
        @word = word
      end

      def description
        @wordable.meta['description']
      end

      def examples
        @wordable.meta['examples']
      end

      def kanji?
        @wordable.meta['kanji'].present?
      end

      def kanji
        @wordable.meta['kanji']
      end

      def notes?
        @wordable.meta['description'].present? || @wordable.meta['examples'].present?
      end

      def notes
        @wordable.meta['description'].presence || @wordable.meta['examples'].presence
      end

      def partial
        :word
      end
    end
  end
end
