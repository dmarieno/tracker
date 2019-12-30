Rails.application.routes.draw do
  root 'tracker#position'
  get 'webhook/logistidata'
  post 'https://api.logistimatics.com/api/command?device_id=45755' => 'webhook#webhookdata'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
