Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'

  resources :users, only: [:new, :create, :show] do
  	resources :tasks, only: [:new, :create]
  end

  resources :sessions, only: [:new, :create, :destroy]

end
