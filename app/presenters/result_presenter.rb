class ResultPresenter
  RESULTS = {
    'HiraganaStrategy' => Results::HiraganaPresenter,
    'GroupStrategy' => Results::GroupPresenter,
    'MeaningStrategy' => Results::MeaningPresenter
  }.freeze

  attr_reader :category

  def initialize(plan, category)
    @plan = plan
    @category = category
  end

  def corrects?
    @plan.corrects.any?
  end

  def corrects
    @plan.corrects.map do |correct|
      word = @plan.words.find(correct.first)
      RESULTS[correct.second].result(word, correct.last)
    end
  end

  def mistakes?
    @plan.mistakes.any?
  end

  def mistakes
    @plan.mistakes.map do |correct|
      word = @plan.words.find(correct.first)
      RESULTS[correct.second].result(word, correct.last)
    end
  end

  def result
    "#{@plan.corrects.size} / #{@plan.size}"
  end
end
