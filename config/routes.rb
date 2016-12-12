Rails.application.routes.draw do
  namespace :admin do
    resources :dvds
    resources :rentals
    resources :movies

    root to: "movies#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :dvds
  resources :rentals
end
