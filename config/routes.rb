Rails.application.routes.draw do
  get  '/signup',  to: 'users#new'
  root 'static_pages#home'
  #get  '/help',    to: 'static_pages#help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
