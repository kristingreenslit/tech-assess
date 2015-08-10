Rails.application.routes.draw do

  root 'home#index'

  devise_for :users, :path => 'accounts'
  #
  # authenticate :user do
  #   resources :computers, only: [:new, :create, :edit, :update, :destroy]
  #   resources :assessments, only: [:new, :create, :edit, :update, :destroy]
  # end

# resources :computers, only: [:index, :show]

  resources :computers
  resources :assessments
## resources looks good here!
end
