Rails.application.routes.draw do
  resources :apartments
  resources :stasions, only: [:new, :show, :edit, :update]
end
