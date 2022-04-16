Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :users

  resources :carts, only: %i[show new create] do
    resources :items, only: %i[destroy]
  end

  resources :cafes do
    resources :products, only: %i[index show new create edit update destroy] do
      # resources :carts, only: %i[new create]
      # resources :items, only: %i[new create]
    end
  end
  # resources :products, only: %i[update destroy]
end
