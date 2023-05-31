# frozen_string_literal: true

Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: [:destroy]
end
