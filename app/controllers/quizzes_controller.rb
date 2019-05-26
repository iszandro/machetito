class QuizzesController < ApplicationController
  before_action :set_category

  def show
    service = CreateQuizPlan.new(@category, repository)
    plan = service.perform

    @view_model = QuizPresenter.new(plan)
  end

  def update
    quiz_plan = QuizPlan.new(
      repository.fetch_plan,
      @category.words.includes(:wordable, translations: %i[wordable])
    )

    if quiz_plan.strategy.valid?(quiz_params[:answer])
      quiz_plan.corrects << [quiz_plan.word.id, quiz_plan.strategy_class_name]
    else
      quiz_plan.mistakes << [quiz_plan.word.id, quiz_plan.strategy_class_name]
    end

    if quiz_plan.index + 1 == quiz_plan.size
      # Redirect to result page
      repository.delete_plan
      return redirect_to category_path(@category)
    end

    repository.save_plan(plan: quiz_plan.plan_array, current: quiz_plan.index + 1, size: quiz_plan.size,
                         mistakes: quiz_plan.mistakes, corrects: quiz_plan.corrects)
    redirect_to category_quiz_path(@category)
  end

  private

  def repository
    RedisRepository.new("machetito-#{@category.id}")
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  def quiz_params
    params.require(:word).permit(:id, :answer, :strategy)
  end
end
