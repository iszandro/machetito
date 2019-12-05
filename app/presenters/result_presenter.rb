class ResultPresenter
  RESULTS = {
    'HiraganaStrategy' => Results::HiraganaPresenter,
    'GroupStrategy' => Results::GroupPresenter,
    'MeaningStrategy' => Results::MeaningPresenter,
    'SentenceStrategy' => Results::SentencePresenter,
    'PartialReadingStrategy' => Results::PartialReadingPresenter
  }.freeze

  attr_reader :category

  def initialize(plan, category, view_context)
    @plan = plan
    @category = category
    @view_context = view_context
  end

  def corrects?
    @plan.corrects.any?
  end

  def corrects
    @plan.corrects.map do |correct|
      resource = @plan.resources.find { |resource| resource.id == correct.first.to_i }
      RESULTS[correct.second].result(resource, correct.last)
    end
  end

  def mistakes?
    @plan.mistakes.any?
  end

  def mistakes
    @plan.mistakes.map do |mistake|
      resource = @plan.resources.find { |resource| resource.id == mistake.first.to_i }
      RESULTS[mistake.second].result(resource, mistake.last)
    end
  end

  def resource_header
    case @plan.scope
    when 'exercises' then
      'Exercise'
    else
      'Word'
    end
  end

  def result
    "#{@plan.corrects.size} / #{@plan.size}"
  end

  def try_button
    @view_context.button_to 'Try all again', @view_context.category_quiz_path(category, @plan.scope => true), class: 'button is-info level-item'
  end

  def try_mistakes_button
    @view_context.button_to 'Try only mistakes', @view_context.category_quiz_path(category, mistakes: true, @plan.scope => true), class: 'button is-danger'
  end
end
