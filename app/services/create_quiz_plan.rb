# frozen_string_literal: true

class CreateQuizPlan
  PLANS = {
    'Verb' => Plans::VerbPlan,
    'Noun' => Plans::NounPlan,
    'Expression' => Plans::ExpressionPlan,
    'kanji' => Plans::KanjiPlan
  }.freeze

  def initialize(category, repository, words)
    @category = category
    @repository = repository
    @words = words
  end

  def perform
    QuizPlan.new(create_plan, @words)
  end

  private

  def create_plan
    plan = @words.flat_map do |word|
      plan = PLANS[word.wordable_type]
      plan&.perform(word)
    end.compact.shuffle

    plan_attrs = { plan: plan, current: 0, size: plan.length, mistakes: [], corrects: [] }
    @repository.save_plan(plan_attrs)
    plan_attrs
  end
end
