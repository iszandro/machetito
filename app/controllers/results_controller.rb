class ResultsController < ApplicationController
  before_action :ensure_category

  def show
    quiz_plan = QuizPlan.new(repository.fetch_plan, @category)
    @view_model = ResultPresenter.new(quiz_plan, @category, view_context)
  end

  private

  def ensure_category
    @category ||= Category.find(params[:category_id])
  end

  def repository
    RedisRepository.new("machetito-#{@category.id}")
  end
end
