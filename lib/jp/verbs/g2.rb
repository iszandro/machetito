# frozen_string_literal: true

module JP
  module Verbs
    module G2
      module_function

      RULES = {
        negative: 'ない',
        negative_polite: 'ません',
        past: 'た',
        past_negative: 'なかった',
        past_polite: 'ました',
        past_polite_negative: 'ませんでした',
        polite: 'ます',
        potential: 'られる',
        potential_negative: 'られない',
        potential_polite: 'られます',
        potential_polite_negative: 'られません',
        te: 'て'
      }.freeze

      RULES.each do |method, kana|
        define_method(method) do |verb|
          raise StandardError, 'Verb must have more than 1 character' if verb.size <= 1

          "#{verb[0..-2]}#{kana}"
        end
      end

      def dictionary(verb)
        raise StandardError, 'Verb must have more than 1 character' if verb.size <= 1

        "#{verb[0..-3]}る"
      end
    end
  end
end
