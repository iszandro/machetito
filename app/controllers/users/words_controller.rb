# frozen_string_literal: true

module Users
  class WordsController < BaseController
    def show
       word = Word.includes(:wordable, translations: :wordable).find(params[:id])
       @word = Users::WordPresenter.new(word)
    end
  end
end
