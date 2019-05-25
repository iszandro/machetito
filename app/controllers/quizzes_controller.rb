class QuizzesController < ApplicationController
  before_action :set_category

  def show
    service = CreateQuizPlan.new(@category)
    plan = service.perform
    word_id = plan.first.first

    @strategy = plan.first.last
    @word = service.words.find(word_id)
  end

  def update
    @word = @category.words.includes(:wordable, translations: %i[wordable]).find(quiz_params[:id])
    strategy = quiz_params[:strategy].safe_constantize.new(@word)

    return redirect_to category_quiz_path(@category, id: @word.id) if strategy.valid?(quiz_params[:answer])
    render :show
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def quiz_params
    params.require(:word).permit(:id, :answer, :strategy)
  end
end
