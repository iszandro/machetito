# frozen_string_literal: true

module Results
  module MeaningKanjiPresenter
    module_function

    def result(word, answer)
      resource = word.wordable_type == 'Kanji' &&
        word.wordable.name ||
        word.wordable.meta['kanji']

      {
        resource: resource,
        answer: answer
      }
    end
  end
end
