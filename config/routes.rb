Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'restaurants#index'

  resources :restaurants do
  resources :reservations, except: [:index, :new]
end

  resource :users
  resource :sessions, only: %i(new create destroy)

end
