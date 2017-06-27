Rails.application.routes.draw do
  get '/signup' => 'users#new'

  root 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/about', to:'static_pages#about'
  get '/contact', to:'static_pages#contact'
end