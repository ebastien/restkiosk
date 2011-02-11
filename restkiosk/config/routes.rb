Restkiosk::Application.routes.draw do
  resource :kiosk, :only => [:show, :create]
  resources(:checkins, :only => [:show, :destroy]) do
    resource :identities, :only => [:show, :update]
    resource :belt, :only => [:show, :create]
  end
  resources :receipts, :only => [:show, :destroy]
  resources :passes, :only => [:show]
end
