Rails.application.routes.draw do
  get 'pages/index'
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_up: 'register',
    sign_out: 'logout'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #root to: 'pages#index'
  resources :pages, only: :index
end
