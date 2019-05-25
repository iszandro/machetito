module Plans
  module NounPlan
    module_function

    def perform(word)
      plan = [
        [word.id, MeaningStrategy],
        [word.id, HiraganaStrategy],
      ]

      plan << [word.id, KanjiStrategy] if word.wordable.meta['kanji']

      plan
    end
  end
end
