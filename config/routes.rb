# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :users
    resources :doctors
    resources :appointments
    post "user_token" => "user_token#create"
    post "find_user" => "users#find"
    get "currentuser" => "users#get_user"
  end
end
