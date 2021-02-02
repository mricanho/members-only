Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :posts, skip: [:destroy, :edit, :show, :update]
  root "posts#index"
end
