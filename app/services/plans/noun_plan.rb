module Plans
  module NounPlan
    module_function

    def perform(word)
      plan = [
        [word.id, 'MeaningStrategy'],
        [word.id, 'HiraganaStrategy'],
      ]

      if word.wordable.meta['kanji']
        plan << [word.id, 'MeaningKanjiStrategy']
        plan << [word.id, 'HiraganaKanjiStrategy']
      end

      plan
    end
  end
end
