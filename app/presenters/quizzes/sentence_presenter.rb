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

    def example
      @exercise.exerciseable.example['sentence']
    end

    def example_clues
      @exercise.exerciseable.example['clues'].join(' / ')
    end

    def partial
      'sentence'
    end
  end
end
