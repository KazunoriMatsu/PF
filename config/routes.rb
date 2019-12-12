Rails.application.routes.draw do
  # customer用のルーティング
  devise_for :customers
  root to: 'pqas#index'

  get 'customers/sign_up' => 'devise/registrations#new'

  resources :questions, only: [:new, :create, :show]
end
