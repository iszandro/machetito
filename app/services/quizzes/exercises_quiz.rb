# frozen_string_literal: true

module Quizzes
  class ExercisesQuiz
    PLANS = {
      'Sentence' => Plans::SentencePlan
    }.freeze

    def initialize(category, repository, exercise_ids = [])
      @category = category
      @repository = repository
      @exercise_ids = exercise_ids
    end

    def perform
      QuizPlan.new(create_plan, exercises)
    end

    private

    def create_plan
      plan = exercises.flat_map do |exercise|
        plan = PLANS[exercise.exerciseable_type]
        plan&.perform(exercise)
      end.compact.shuffle

      plan_attrs = { plan: plan, current: 0, size: plan.length, mistakes: [], corrects: [], scope: 'exercises' }
      @repository.save_plan(plan_attrs)
      plan_attrs
    end

    def exercises
      @_exercises ||= begin
        scope = @category.exercises.includes(:exerciseable)
        return scope.where(id: @exercise_ids) if @exercise_ids.any?

        scope
      end
    end
  end
end
