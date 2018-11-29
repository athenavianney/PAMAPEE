Rails.application.routes.draw do

	get 'announcements/index'
	
	resources :announcements 
	
	root 'announcements#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
