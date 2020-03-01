module Plans
  module KanjiPlan
    module_function

    def perform(word)
      [
        [word.id, 'MeaningKanjiStrategy'],
        [word.id, 'PartialReadingStrategy'],
      ]
    end
  end
end
