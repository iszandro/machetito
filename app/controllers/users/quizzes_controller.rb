# frozen_string_literal: true

module Users
  class QuizzesController < BaseController
    before_action :set_category

    def show
      quiz_plan = QuizPlan.new(repository.fetch_plan, @category)
      return redirect_to category_quiz_result_path(@category) if quiz_plan.finished?

      @view_model = QuizPresenter.new(quiz_plan)
    end

    def create
      strategy = params[:exercises].present? && :exercises || :words

      if params[:mistakes]
        quiz_plan = QuizPlan.new(repository.fetch_plan, @category)

        if quiz_plan.mistakes?
          mistaken_words = quiz_plan.mistakes.map(&:first)
          CreateQuizPlan.new(@category, repository, strategy: strategy, resource_ids: mistaken_words).perform
        else
          CreateQuizPlan.new(@category, repository, strategy: strategy).perform
        end
      else
        CreateQuizPlan.new(@category, repository, strategy: strategy).perform
      end

      redirect_to category_quiz_path(@category)
    end

    def update
      quiz_plan = QuizPlan.new(repository.fetch_plan, @category)
      return redirect_to category_quiz_result_path(@category) if quiz_plan.finished?

      if quiz_plan.strategy.valid?(quiz_params[:answer])
        quiz_plan.corrects << [quiz_plan.resource.id, quiz_plan.strategy_class_name, quiz_params[:answer]]
      else
        quiz_plan.mistakes << [quiz_plan.resource.id, quiz_plan.strategy_class_name, quiz_params[:answer]]
      end

      repository.save_plan(plan: quiz_plan.plan_array, current: quiz_plan.index + 1, size: quiz_plan.size,
        mistakes: quiz_plan.mistakes, corrects: quiz_plan.corrects)

      return redirect_to category_quiz_result_path(@category) if quiz_plan.index + 1 == quiz_plan.size

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
      @_quiz_params ||= begin
        required_params = params[:word].present? && params.require(:word) || params.require(:exercise)
        required_params.permit(:id, :answer, :strategy)
      end
    end
  end
end
