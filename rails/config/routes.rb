Rails.application.routes.draw do
  resources :divisions, only: [:index]
  resources :conferences, only: [:index]

  resources :teams, only: [:index, :show]
end
