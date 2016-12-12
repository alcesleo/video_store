Rails.application.routes.draw do
  namespace :admin do
    resources :dvds
    resources :rentals

    root to: "dvds#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :dvds
  resources :rentals
end
