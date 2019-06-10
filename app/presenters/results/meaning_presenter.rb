module Results
  module MeaningPresenter
    module_function

    def result(word, answer)
      {
        word: word.wordable.name,
        answer: answer
      }
    end
  end
end
