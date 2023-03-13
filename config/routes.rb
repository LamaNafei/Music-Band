Rails.application.routes.draw do
  get '/ticketModal', to: 'departments#modal'
  post '/ticketModal', to: 'departments#modal'
  post '/', to: 'departments#home'
  get '/',  to: 'departments#home' 
  post '/admin', to: 'departments#admin'
  get '/admin', to: 'departments#admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
