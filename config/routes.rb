Rails.application.routes.draw do
  get 'static/pages'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   get '/', to: 'static_pages#index'

   post '/posts', to: 'posts#create'
end
