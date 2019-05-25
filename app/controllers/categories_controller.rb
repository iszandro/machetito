class CategoriesController < ApplicationController
  def index
    @categories = Category.with_no_parents
  end

  def show
    @category = Category.includes(:subcategories, :words).find(params[:id])
  end
end
