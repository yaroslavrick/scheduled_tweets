# Defines the root path route ("/")
# root "articles#index"

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # GET /about
  get 'about-us', to: 'about#index', as: :about

  # get "/sign_up" for "registration" controller for new
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  # get "/", to: "main#index"
  root to: 'main#index'

end
