module Results
  module MeaningPresenter
    module_function

    def result(word, answer)
      {
        resource: word.wordable.name,
        answer: answer
      }
    end
  end
end
