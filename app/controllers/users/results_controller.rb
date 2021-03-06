# frozen_string_literal: true

module Users
  class ResultsController < BaseController
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
      RedisRepository.new("machetito-#{current_user.id}-#{@category.id}")
    end
  end
end
