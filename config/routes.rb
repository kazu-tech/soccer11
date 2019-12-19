Rails.application.routes.draw do
  devise_for :teams
  root to: 'posts#index'
  resources :teams do
  end
  resources :posts, only: [:index, :new, :create, :show, :update,:edit]
end
