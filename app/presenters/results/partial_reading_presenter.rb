# frozen_string_literal: true

module Results
  module PartialReadingPresenter
    module_function

    def result(word, answer)
      {
        resource: word.wordable.name,
        answer: answer
      }
    end
  end
end
