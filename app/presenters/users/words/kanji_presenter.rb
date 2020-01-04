# frozen_string_literal: true

module Users
  module Words
    class KanjiPresenter
      def initialize(kanji, word)
        @kanji = kanji
        @word = word
      end

      def categories
        @word.categories.pluck(:display_name)
      end

      def level
        @kanji.meta['jlpt']
      end

      def partial
        :kanji
      end

      def readings
        @readings ||= begin
          result = []

          if @kanji.on_yomi.size > @kanji.kun_yomi.size
            @kanji.on_yomi.each_index do |index|
              result << @kanji.on_yomi[index]
              result << @kanji.kun_yomi[index]
            end
          else
            @kanji.kun_yomi.each_index do |index|
              result << @kanji.on_yomi[index]
              result << @kanji.kun_yomi[index]
            end
          end

          result
        end

      end

      def title
        wordable.name
      end
    end
  end
end
