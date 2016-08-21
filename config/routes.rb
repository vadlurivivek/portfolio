Rails.application.routes.draw do
  resources :test
  resources :posts
  get 'welcome/index'
  root 'welcome#index'
  get '/index', to: 'test#index'
  get '/articles', to: 'test#articles'
  get '/contact', to: 'test#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
