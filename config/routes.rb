# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  devise_for :users

  root to: 'categories#index'
  resources :categories, only: %i[index show] do
    resource :quiz, only: %i[show update create] do
      resource :result, only: :show
    end
  end
  resources :words, only: %i[show]
end
