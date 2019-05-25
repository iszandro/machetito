# frozen_string_literal: true

class CreateQuizPlan
  PLANS = {
    'Verb' => Plans::VerbPlan,
    'Noun' => Plans::NounPlan,
    'Expression' => Plans::ExpressionPlan,
    'kanji' => Plans::KanjiPlan
  }.freeze

  def initialize(category, repository)
    @category = category
    @repository = repository
  end

  def perform
    QuizPlan.new(fetch_or_create_plan, words)
  end

  private

  def create_plan
    plan = words.flat_map do |word|
      plan = PLANS[word.wordable_type]
      plan&.perform(word)
    end.compact.shuffle

    plan_attrs = { plan: plan, current: 0, size: plan.length, mistakes: [], corrects: [] }
    @repository.save_plan(plan_attrs)
    plan_attrs
  end

  def fetch_or_create_plan
    fetch_plan.present? && fetch_plan || create_plan
  end

  def fetch_plan
    @repository.fetch_plan
  rescue StandardError => _e
    nil
  end

  def words
    @_words ||= @category.words.includes(:wordable, translations: %i[wordable])
  end
end
