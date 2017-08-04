Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :create, :new]
  resources :session, only: [:new, :create, :destroy]
  resources :schedules, only: [:index, :update, :edit]
  root "posts#index"
end
