Rails.application.routes.draw do

	root 'restaurants#index'
	delete '/sessions' => 'sessions#destroy'
	
	resources :restaurants do
	resources :reservations, except: [:index, :new]
end

	resources :users
	resources :sessions, only: %i(new create destroy)

end
