Rails.application.routes.draw do
  resources :transactions
  resources :favorites
  resources :items
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  delete '/favorites/:id', to: 'favorites#destroy', as: 'unfavor'
  post '/favorites/new', to: 'favorites#add_favorite', as: 'add_favorite'
  delete '/favorites/:id', to: 'home#destroy', as: 'unfavor_remove'
  post '/transactions/new', to: 'transactions#new_transaction', as: "add_transaction"

end
