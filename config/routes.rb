Rails.application.routes.draw do
  devise_for :users
  root to: 'games#show'
  resources :games do
    resources :moves
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
