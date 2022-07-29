Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: "todos#index"
  
  resources :todos, only: [:index, :new, :create] do
    resource :completion, only: [:create, :destroy]
  end
  resources :sessions, only: [:new, :create]
end
