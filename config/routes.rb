Rails.application.routes.draw do
  # set up root route for devise to reroute to after successful login
  root 'computers#index'

  # alias user routes for account
  devise_for :users, :path => 'accounts'

  resources :computers
  resources :assessments

end
