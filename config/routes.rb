Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :costumes do
    resources :bookings, only: [:create]
  end
  get "dashboard", to: 'pages#dashboard'
  resources :bookings, only: %i[index edit destroy]
  patch "bookings/:id/accept", to: 'bookings#accept', as: 'accept_booking'
  patch "bookings/:id/reject", to: 'bookings#cancel', as: 'cancel_booking'
end
