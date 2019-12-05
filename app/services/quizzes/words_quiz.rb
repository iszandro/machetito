# frozen_string_literal: true

module Quizzes
  class WordsQuiz
    PLANS = {
      'Verb' => Plans::VerbPlan,
      'Noun' => Plans::NounPlan,
      'Expression' => Plans::ExpressionPlan,
      'Kanji' => Plans::KanjiPlan
    }.freeze

    def initialize(category, repository, word_ids = [])
      @category = category
      @repository = repository
      @word_ids = word_ids
    end

    def perform
      QuizPlan.new(create_plan, words)
    end

    private

    def create_plan
      plan = words.flat_map do |word|
        plan = PLANS[word.wordable_type]
        plan&.perform(word)
      end.compact.shuffle

      plan_attrs = { plan: plan, current: 0, size: plan.length, mistakes: [], corrects: [], scope: 'words' }
      @repository.save_plan(plan_attrs)
      plan_attrs
    end

    def words
      @_words ||= begin
        scope = @category.words.includes(:wordable, translations: %i[wordable])
        return scope.where(id: @word_ids) if @word_ids.any?

        scope
      end
    end
  end
end
