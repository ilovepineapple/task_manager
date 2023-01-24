# frozen_string_literal: true

# route application
Rails.application.routes.draw do
  root 'main#index'

  get 'menu' => 'access#menu'
  get 'login' => 'access#new'
  delete 'logout' => 'access#destroy'
  resource :access, controller: 'access', only: %i[new create destroy] do
    member do
      get :menu
    end
  end

  match 'about', to: 'main#about', via: :get
  match 'hello', to: 'main#hello', via: :get

  resources :categories do
    member do
      get :delete
    end
  end

  resources :tasks do
    member do
      get :delete
    end
  end
end
