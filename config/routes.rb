Rails.application.routes.draw do
  # set up root route for devise to reroute to after successful login
  root 'home#index'

  # alias user routes for account
  devise_for :users, :path => 'accounts'

  # next computer resource under user
  resources :users do
    resources :computers
    resources :assessments
  end
end
