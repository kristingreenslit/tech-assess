Rails.application.routes.draw do

  root 'home#index'

  devise_for :users, :path => 'accounts'

  resources :computers
  resources :assessments

end
