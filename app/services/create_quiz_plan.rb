# frozen_string_literal: true

class CreateQuizPlan
  PLANS = {
    'Verb' => Plans::VerbPlan,
    'Noun' => Plans::NounPlan,
    'Expression' => Plans::ExpressionPlan,
    'kanji' => Plans::KanjiPlan
  }.freeze

  def initialize(category)
    @category = category
  end

  def perform
    words.flat_map do |word|
      plan = PLANS[word.wordable_type]
      plan&.perform(word)
    end.compact.shuffle
  end

  private

  def words
    @_words ||= @category.words.includes(:wordable, translations: %i[wordable])
  end
end
