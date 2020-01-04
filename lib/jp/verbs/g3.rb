# frozen_string_literal: true

module JP
  module Verbs
    module G3
      module_function

      KURU_REGEX = /くる$/
      KURU_POLITE_REGEX = /きます$/
      SURU_REGEX = /する$/
      SURU_POLITE_REGEX = /します$/

      RULES = {
        dictionary: {
          come: { regex: KURU_POLITE_REGEX, stem: 'くる' },
          do: { regex: SURU_POLITE_REGEX, stem: 'する' }
        },
        negative: {
          come: { regex: KURU_REGEX, stem: 'こない' },
          do: { regex: SURU_REGEX, stem: 'しない' }
        },
        negative_polite: {
          come: { regex: KURU_REGEX, stem: 'きません' },
          do: { regex: SURU_REGEX, stem: 'しません' }
        },
        past: {
          come: { regex: KURU_REGEX, stem: 'きた' },
          do: { regex: SURU_REGEX, stem: 'した' }
        },
        past_negative: {
          come: { regex: KURU_REGEX, stem: 'こなかった' },
          do: { regex: SURU_REGEX, stem: 'しなかった' }
        },
        past_polite: {
          come: { regex: KURU_REGEX, stem: 'きました' },
          do: { regex: SURU_REGEX, stem: 'しました' }
        },
        past_polite_negative: {
          come: { regex: KURU_REGEX, stem: 'きませんでした' },
          do: { regex: SURU_REGEX, stem: 'しませんでした' }
        },
        polite: {
          come: { regex: KURU_REGEX, stem: 'きます' },
          do: { regex: SURU_REGEX, stem: 'します' }
        },
        potential: {
          come: { regex: KURU_REGEX, stem: 'こられる' },
          do: { regex: SURU_REGEX, stem: 'できる' }
        },
        potential_negative: {
          come: { regex: KURU_REGEX, stem: 'こられない' },
          do: { regex: SURU_REGEX, stem: 'できない' }
        },
        potential_polite: {
          come: { regex: KURU_REGEX, stem: 'こられます' },
          do: { regex: SURU_REGEX, stem: 'できます' }
        },
        potential_polite_negative: {
          come: { regex: KURU_REGEX, stem: 'こられません' },
          do: { regex: SURU_REGEX, stem: 'できません' }
        },
        te: {
          come: { regex: KURU_REGEX, stem: 'きて' },
          do: { regex: SURU_REGEX, stem: 'して' }
        },
      }.freeze

      RULES.each do |method, rules|
        define_method(method) do |verb|
          raise StandardError, 'Verb must have more than 1 character' if verb.size <= 1

          _, rule = rules.find { |_, rule_val| verb =~ rule_val[:regex] }
          return if rule.nil?

          verb.gsub(rule[:regex], rule[:stem])
        end
      end
    end
  end
end
