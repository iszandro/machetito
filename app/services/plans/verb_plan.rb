module Plans
  module VerbPlan
    module_function

    def perform(word)
      plan = [
        [word.id, 'MeaningStrategy'],
        [word.id, 'HiraganaStrategy'],
      ]

      plan << [word.id, 'GroupStrategy'] if word.wordable.meta['group']
      plan << [word.id, 'KanjiStrategy'] if word.wordable.meta['kanji']

      plan
    end
  end
end
