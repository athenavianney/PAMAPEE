Rails.application.routes.draw do

	resources :announcements 
	resources :groups do
		resources :students do
			put 'aceptar'
		end
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
