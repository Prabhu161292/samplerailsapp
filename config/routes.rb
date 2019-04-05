Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# post '/subscribe' => '#create'
post '/push_registrations' => 'push_registrations#create'
post '/broadcast' => 'broadcasts#index'

end
