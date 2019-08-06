# frozen_string_literal: true

module Users
  class WordsController < BaseController
    def show
      @word = Word.find(params[:id])
    end
  end
end
