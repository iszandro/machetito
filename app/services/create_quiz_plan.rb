# frozen_string_literal: true

class CreateQuizPlan
  QUIZZES = {
    exercises: Quizzes::ExercisesQuiz,
    words: Quizzes::WordsQuiz
  }.freeze

  delegate :perform, to: :quiz_strategy

  def initialize(category, repository, strategy: :words, resource_ids: [])
    @category = category
    @repository = repository
    @strategy = strategy
    @resource_ids = resource_ids
  end

  private

  def quiz_strategy
    @_quiz_strategy ||= QUIZZES[@strategy].new(@category, @repository, @resource_ids)
  end
end
