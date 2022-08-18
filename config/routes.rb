Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bathrooms, only: %i[index show new create edit update destroy] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[index show]

  get '/my_bathrooms', to: 'bathrooms#my_bathrooms', as: :my_bathrooms

  get '/host_bookings/:id/set_status', to: 'bookings#set_status', as: :status_form

  patch '/host_bookings/:id', to: 'bookings#update', as: :set_status

  get '/host_bookings', to: 'bookings#host_bookings', as: :host_bookings

  get '/host_bookings/:id', to: 'bookings#host_bookings_show', as: :host_booking
end
