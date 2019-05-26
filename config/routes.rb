Rails.application.routes.draw do
  root 'static_pages#home'

  get  '/contact',  to: 'static_pages#contact'
  
  get 'contact-us', to: 'messages#new', as: 'new_message'
  post 'contact-us', to: 'messages#create', as: 'create_message'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :courses
  resources :locations
  resources :categories
  #get  '/help',    to: 'static_pages#help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post   'courses/:id/upvote',     to: 'upvotes#new', as: 'upvote'
  post   'courses/:id/downvote',  to: 'downvotes#new', as: 'downvote'
  
  match "/404", :to => "errors#not_found", :via => :all
  match "/422", :to => "errors#unacceptable", :via => :all
  match "/500", :to => "errors#internal_error", :via => :all
end
