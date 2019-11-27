Rails.application.routes.draw do
	namespace :admin do
	  	devise_for :users, skip: :all
	  	devise_for :users, controllers: { sessions: 'admin/users/sessions' }
	  	resource :products
		root to: 'products#index'
	end
	get '/indexproduct' => 'home#indexproduct'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
	