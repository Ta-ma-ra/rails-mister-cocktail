Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:new, :create, :edit, :update]
  end
  resources :doses, only: [:destroy]
  resources :reviews, only: [:new, :create]
end
