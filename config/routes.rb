Rails.application.routes.draw do
  # get 'static/pages'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   get '/', to: 'static_pages#index'


  #  POSTS
   post '/posts', to: 'posts#create'
   get '/posts', to: 'posts#index'

  #  USERS
   post '/users', to: 'users#create'
end
