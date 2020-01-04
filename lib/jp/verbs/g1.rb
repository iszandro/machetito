# frozen_string_literal: true

module JP
  module Verbs
    class G1
      RULES = [
        POLITE = {
          'う' => 'い',
          'く' => 'き',
          'ぐ' => 'ぎ',
          'す' => 'し',
          'ず' => 'じ',
          'つ' => 'ち',
          'ぬ' => 'に',
          'ふ' => 'ひ',
          'ぶ' => 'び',
          'む' => 'み',
          'る' => 'り',
        }.freeze,

        POLITE_INVERT = POLITE.invert.freeze,

        NEGATIVE = {
          'う' => 'わ',
          'く' => 'か',
          'ぐ' => 'が',
          'す' => 'さ',
          'ず' => 'ざ',
          'つ' => 'た',
          'づ' => 'だ',
          'ぬ' => 'な',
          'ふ' => 'は',
          'ぶ' => 'ば',
          'む' => 'ま',
          'る' => 'ら',
        }.freeze,

        NEGATIVE_INVERT = NEGATIVE.invert.freeze,

        POTENTIAL = {
          'う' => 'え',
          'く' => 'け',
          'ぐ' => 'げ',
          'す' => 'せ',
          'ず' => 'ぜ',
          'つ' => 'て',
          'づ' => 'で',
          'ぬ' => 'ね',
          'ふ' => 'へ',
          'ぶ' => 'べ',
          'む' => 'め',
          'る' => 'れ',
        }.freeze,

        TE = {
          'う' => 'って',
          'く' => 'いて',
          'ぐ' => 'いで',
          'す' => 'して',
          'つ' => 'って',
          'ぶ' => 'んで',
          'む' => 'んで',
          'る' => 'って',
        }.freeze
      ].freeze

      class << self
        def dictionary(verb)
          raise StandardError, 'Verb must have more than 1 character' if verb.size <= 1

          return "#{verb[0..-4]}#{POLITE_INVERT[verb[-3]]}" if polite?(verb)
          return 'ある' if verb == 'ない'

          "#{verb[0..-4]}#{NEGATIVE_INVERT[verb[-3]]}"
        end

        def negative(verb)
          raise StandardError, 'Verb must have more than 1 character' if verb.size <= 1
          return 'ない' if verb == 'ある'

          "#{verb[0..-2]}#{NEGATIVE[verb[-1]]}ない"
        end

        def negative_polite(verb)
          polite(verb).gsub(/ます/, 'ません')
        end
        alias_method :polite_negative, :negative_polite

        def past(verb)
          inflation = te(verb)
          "#{inflation[0..-2]}#{inflation[-1].gsub(/て/, 'た').gsub(/で/, 'だ')}"
        end

        def past_negative(verb)
          negative(verb).gsub(/ない/, 'なかった')
        end

        def past_polite(verb)
          polite(verb).gsub(/ます/, 'ました')
        end

        def past_polite_negative(verb)
          polite(verb).gsub(/ます/, 'ませんでした')
        end

        def polite(verb)
          raise StandardError, 'Verb must have more than 1 character' if verb.size <= 1

          "#{verb[0..-2]}#{POLITE[verb[-1]]}ます"
        end

        def potential(verb)
          raise StandardError, 'Verb must have more than 1 character' if verb.size <= 1
          return if verb == 'ある'

          "#{verb[0..-2]}#{POTENTIAL[verb[-1]]}る"
        end

        def potential_negative(verb)
          inflection = potential(verb)
          return if inflection.blank?

          JP::Verbs::G2.negative(inflection)
        end

        def potential_polite(verb)
          inflection = potential(verb)
          return if inflection.blank?

          "#{inflection[0..-2]}ます"
        end

        def potential_polite_negative(verb)
          inflection = potential_negative(verb)
          return if inflection.blank?

          inflection.gsub(/ない/, 'ません')
        end

        def te(verb)
          raise StandardError, 'Verb must have more than 1 character' if verb.size <= 1
          return 'いって' if verb == 'いく'

          "#{verb[0..-2]}#{TE[verb[-1]]}"
        end

        private

        def polite?(verb)
          verb[-2..-1] =~ /ます/
        end
      end
    end
  end
end
