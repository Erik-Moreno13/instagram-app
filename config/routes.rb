Rails.application.routes.draw do
  resources :users do
    resources :posts
  end
  namespace :user do
    resources :posts
  end

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_up: 'register',
    sign_out: 'logout'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'pages#index'
  resources :pages, only: :index

end
