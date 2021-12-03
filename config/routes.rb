Rails.application.routes.draw do
 
  root to: "users#show"
  devise_for :users 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 resources :users
 resources :patients 
 resources :doctors do
  resources :appointments
 end
 resources :appointments do
  resources :medicines
end
 post '/doctors/:doctor_id/appointments/:id/edit' => 'appointments#update'
 get '/doctors/:doctor_id/appointments/:id/medicines/new' => 'medicines#new'
 post 'appointments/appointment_id/medicines/:id' => 'medicines#edit'
 
end
