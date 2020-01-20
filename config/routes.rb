Rails.application.routes.draw do
  resources :quizzes
  resources :questions
  resources :user_words
  resources :character_words
  resources :words
  resources :characters
  resources :kanjis
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'
  get 'validate', to: 'application#authenticate_request'
end
