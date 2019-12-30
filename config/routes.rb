Rails.application.routes.draw do
  resources :gpsdevices
  root 'tracker#position'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
