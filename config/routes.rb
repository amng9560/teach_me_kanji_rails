Rails.application.routes.draw do
  resources :character_words
  resources :words
  resources :characters
  resources :kanjis
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
