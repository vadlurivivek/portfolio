Rails.application.routes.draw do
  resources :test
  root 'test#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
