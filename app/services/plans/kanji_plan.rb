module Plans
  module KanjiPlan
    module_function

    def perform(word)
      [
        #[word.id, 'MeaningStrategy'],
        [word.id, 'PartialReadingStrategy'],
      ]
    end
  end
end
