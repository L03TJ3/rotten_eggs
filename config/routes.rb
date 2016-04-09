Rails.application.routes.draw do
  get 'films' => 'films#index'
  get 'films/:id' => 'films#show'

  root 'films#index'
end
