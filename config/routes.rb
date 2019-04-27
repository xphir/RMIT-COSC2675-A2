Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users
  #get  '/help',    to: 'static_pages#help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
