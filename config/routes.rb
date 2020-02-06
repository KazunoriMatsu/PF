Rails.application.routes.draw do

  # customer用のルーティング
  devise_for :customers
  root to: 'pqas#index'

  get 'customers/sign_up' => 'devise/registrations#new'

  resources :customers, only: [:show, :update, :destroy] do
  	get 'exit', on: :member

    resources :favorites, only: [:index]

  end
  resources :pqas, only: [:index] do
  	get 'about', on: :collection
  	get 'search_result', on: :collection
	end

  resources :posts, only: [:new, :create, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
  end


  resources :questions, only: [:new, :create, :show, :destroy] do
    resources :answers, only: [:new, :create, :show, :destroy]
  end


end
