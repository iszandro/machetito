class QuizPresenter
  PRESENTERS = {
    MeaningStrategy => Quizzes::MeaningPresenter,
    HiraganaStrategy => Quizzes::HiraganaPresenter,
    MeaningKanjiStrategy => Quizzes::MeaningKanjiPresenter,
    HiraganaKanjiStrategy => Quizzes::HiraganaKanjiPresenter
  }.freeze

  delegate :partial, :to_model, to: :word

  def initialize(plan)
    @plan = plan
  end

  def form_path
    %i[category quiz]
  end

  def word
    @_word ||= PRESENTERS[@plan.strategy.class].new(@plan.word)
  end
end
