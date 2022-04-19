Rails.application.routes.draw do
  devise_for :users

  get 'profile', to: 'users#profile'
  patch 'profile', to: 'users#update_details', as: 'update_user'

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Your cart show page
  get 'your-cart', to: 'carts#show'

  # Previous Transactions
  get 'transactions', to: 'carts#transactions', as: 'transactions'

  # to delete items in cart from your_cart page
  delete 'your-cart', to: 'items#destroy'

  # to delete items in cart from cafe menu page
  delete 'your_cart_in_cafe', to: 'items#destroy_from_cafe'

  # Add items to cart (from cafe menu)
  post '/cafes/:id', to: 'items#create', as: 'add_to_cart'

  # Increase number of items in cart from cart page
  post 'your-cart', to: 'items#create_from_cart_page', as: 'add_to_cart_from_cart_page'

  # Checkout page
  get 'checkout_page', to: 'carts#checkout', as: 'checkout_page'

  # Checkout cart
  post 'checkout_page', to: 'carts#checkout_cart', as: 'checkout_cart'

  # Product Deletion
  delete '/cafes/:id/products', to: 'products#destroy', as: 'product_destroy'
  resources :cafes do
    resources :products, only: %i[index show new create edit update destroy]
  end
end
