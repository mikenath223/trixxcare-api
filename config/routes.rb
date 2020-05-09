# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :users
    resources :doctors
    resources :appointments
    post "user_token" => "user_token#create"
    post "find_user" => "users#find"
    # get "appointments" => "appointments#index"
    # post "appointment" => "appointments#create"
    # post "appointment" => "appointments#update"

    # get "appointmentdel/:id" => "appointments#destroy"
    # post 'appointment/:id' => 'appointments#create'
  end
end
