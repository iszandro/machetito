module Results
  module SentencePresenter
    module_function

    def result(exercise, answer)
      {
        resource: exercise.exerciseable.answers,
        answer: answer
      }
    end
  end
end
