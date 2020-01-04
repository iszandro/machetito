# frozen_string_literal: true

module JP
  module Verbs
    module Inflector
      module_function

      METHODS = %i[dictionary negative negative_polite past past_polite
                past_negative past_polite_negative polite potential
                potential_negative potential_polite potential_polite_negative
                te].freeze

      METHODS.each do |method|
        define_method(method) do |verb, group|
          "JP::Verbs::G#{group}".safe_constantize.send(method, verb)
        end
      end
    end
  end
end
