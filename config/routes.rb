Rails.application.routes.draw do

	root 'restaurants#index'

  resources :restaurants do
  resources :reservations, except: [:index, :new]
end

  resource :users
  resource :sessions, only: %i(new create destroy)

end
