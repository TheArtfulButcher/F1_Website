Rails.application.routes.draw do
  resources :races
  resources :tracks
  resources :drivers
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
