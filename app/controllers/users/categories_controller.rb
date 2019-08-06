# frozen_string_literal: true

module Users
  class CategoriesController < BaseController
    def index
      @categories = Category.with_no_parents
    end

    def show
      category = Category.includes(:subcategories, :words).find(params[:id])
      @category = Users::CategoryPresenter.new(category)
    end
  end
end
