Rails.application.routes.draw do
  resources :films do
    resources :posts
  end
  # get 'films' => 'films#index'
  # get 'films/new' => "films#new"
  # get 'films/:id' => 'films#show', as: :film

  root 'films#index'
end
