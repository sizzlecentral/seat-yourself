Rails.application.routes.draw do

  root 'restaurants#index'

  resources :restaurants do
  resources :reservations, except: [:index, :new]
end

end
