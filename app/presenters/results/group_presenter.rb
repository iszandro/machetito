module Results
  module GroupPresenter
    module_function

    def result(word, answer)
      {
        resource: "#{word.wordable.name} (group)",
        answer: answer
      }
    end
  end
end
