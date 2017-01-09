Rails.application.routes.draw do
  get 'carts/show'

    devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
    resources :movies, only: [:show, :index]
    resource :cart, only: [:show] do
      put 'add/:movie_id', to: 'carts#add', as: :add_to
      put 'remove/:movie_id', to: 'carts#remove', as: :remove_from
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'movies#index'
end
