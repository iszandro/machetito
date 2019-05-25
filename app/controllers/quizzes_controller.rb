class QuizzesController < ApplicationController
  before_action :set_category

  def show
    words = @category.words.includes(:wordable, translations: %i[wordable])


    @word = if params[:id].present?
              words.where('words.id > :id', id: params[:id]).first
            else
              words.first
            end

    redirect_to category_path(@category) unless @word
  end

  def update
    @word = @category.words.includes(:wordable, translations: %i[wordable]).find(quiz_params[:id])
    strategy = MeaningStrategy.new(@word)

    return redirect_to category_quiz_path(@category, id: @word.id) if strategy.valid?(quiz_params[:answer])
    render :show
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def quiz_params
    params.require(:word).permit(:id, :answer)
  end
end
