module Plans
  module KanjiPlan
    module_function

    def perform(word)
      [
        [word.id, MeaningStrategy],
        [word.id, ReadingStrategy],
      ]
    end
  end
end
