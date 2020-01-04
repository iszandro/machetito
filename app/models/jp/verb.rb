# frozen_string_literal: true

module JP
  class Verb < SimpleDelegator
    JP::Verbs::Inflector::METHODS.each do |method|
      define_method("to_#{method}") do
        JP::Verbs::Inflector.send(method, name, group || 1)
      end
    end

    def group
      meta['group']
    end

    def kanji
      meta['kanji']
    end
  end
end
