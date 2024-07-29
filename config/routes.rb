Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :flats do
    resources :bookings, only: [:create, :show, :new]
  end
  resources :bookings, only: [:index, :show]
end
