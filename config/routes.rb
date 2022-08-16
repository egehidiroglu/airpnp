Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bathrooms, only: %i[index show] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[index show]

  get '/host_bookings/:id/set_status', to: 'bookings#set_status', as: :status_form

  patch '/host_bookings/:id', to: 'bookings#update', as: :set_status
end
