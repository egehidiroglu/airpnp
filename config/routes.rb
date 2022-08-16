Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bathrooms, only: %i[index show] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[index show]
end
