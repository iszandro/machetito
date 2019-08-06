# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :redirect_to_categories, if: :user_signed_in?

  def index
    redirect_to new_user_session_path
  end

  private

  def redirect_to_categories
    redirect_to categories_path
  end
end
