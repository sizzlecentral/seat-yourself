Rails.application.routes.draw do

	root 'restaurants#index'

	delete '/sessions' => 'sessions#destroy'
	
	resources :restaurants do
	resources :reservations, except: [:index, :new]

end

  resource :users
  resource :sessions, only: %i(new create destroy)

end
