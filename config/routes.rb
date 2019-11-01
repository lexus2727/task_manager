Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  root "static#welcome"

  resources :sessions

  resources :users, only: [:new, :create, :show] do
    resources :tasks, only: [:index, :show, :new]
  end


  resources :assignments
  resources :tasks

  get '/signout', to: 'sessions#destroy'
  get '/tasks/:id/complete', to: "tasks#complete"
  get '/auth/facebook/callback' => 'sessions#create'
  

end
