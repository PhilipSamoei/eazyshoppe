Rails.application.routes.draw do
  resources :sales
  resources :watches
  resources :customers
  resources :dealers
  
  post '/login', to: 'dealers#login'
  delete '/logout', to: 'dealers#logout'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
