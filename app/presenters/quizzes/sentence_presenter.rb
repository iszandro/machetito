# frozen_string_literal: true

module Quizzes
  class SentencePresenter
    delegate :to_model, to: :@exercise

    def initialize(exercise)
      @exercise = exercise
    end

    def clues
      @exercise.exerciseable.clues.join(' / ')
    end

    def examples
      @exercise.exerciseable.examples
    end

    def partial
      'sentence'
    end
  end
end
