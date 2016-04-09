Rails.application.routes.draw do
  get 'films' => 'films#index'

  root 'films#index'
end
