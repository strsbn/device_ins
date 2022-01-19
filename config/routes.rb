Rails.application.routes.draw do
  devise_for :users
  resources :device_ins
  root to: "device_ins#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
