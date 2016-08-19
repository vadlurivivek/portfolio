Rails.application.routes.draw do
  resources :test
  root 'test#index'
  get '/index', to: 'test#index'
  get '/articles', to: 'test#articles'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
