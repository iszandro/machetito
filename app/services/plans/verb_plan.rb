module Plans
  module VerbPlan
    module_function

    def perform(word)
      plan = [
        [word.id, 'MeaningStrategy'],
        [word.id, 'HiraganaStrategy'],
      ]

      plan << [word.id, 'GroupStrategy'] if word.wordable.meta['group']
      if word.wordable.meta['kanji']
        plan << [word.id, 'MeaningKanjiStrategy']
        plan << [word.id, 'HiraganaKanjiStrategy']
      end

      plan
    end
  end
end
