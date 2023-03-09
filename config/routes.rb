Rails.application.routes.draw do
  post '/', to: 'departments#homes'
  get '/',  to: 'departments#home' 
  post '/admin', to: 'departments#admin'
  get '/admin', to: 'departments#admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
