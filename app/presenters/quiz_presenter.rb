class QuizPresenter
  PRESENTERS = {
    MeaningStrategy => Quizzes::MeaningPresenter,
    HiraganaStrategy => Quizzes::HiraganaPresenter,
    MeaningKanjiStrategy => Quizzes::MeaningKanjiPresenter,
    HiraganaKanjiStrategy => Quizzes::HiraganaKanjiPresenter,
    GroupStrategy => Quizzes::GroupPresenter,
    SentenceStrategy => Quizzes::SentencePresenter,
    PartialReadingStrategy => Quizzes::PartialReadingPresenter
  }.freeze

  delegate :partial, :to_model, to: :resource

  def initialize(plan)
    @plan = plan
  end

  def form_path
    %i[category quiz]
  end

  def resource
    @_resource ||= PRESENTERS[@plan.strategy.class].new(@plan.resource)
  end
end
