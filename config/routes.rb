Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # customer用のルーティング
  devise_for :customers, :controllers => {
  :registrations => 'customers/registrations',
  :sessions => 'customers/sessions'
	}

	# root to: 'customers/sign_in'
end
