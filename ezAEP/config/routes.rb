Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :events
  # get 'home/index'
  root 'home#index'

  get 'home/myevents'
  get 'home/joinevents'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
