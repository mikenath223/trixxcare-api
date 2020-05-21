# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :users, only: %i[show]
    resources :doctors, only: %i[index show]
    resources :appointments, only: %i[index create update destroy]
    post "user_token" => "user_token#create"
    post "find_user" => "users#find"
    get "currentuser" => "users#user"
  end
end
