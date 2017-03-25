Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'leagues#index'

  resources :games do
    get :fixture, on: :collection
    get :table, on: :collection
  end

  resources :teams
end
