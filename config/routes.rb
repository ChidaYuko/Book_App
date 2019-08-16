Rails.application.routes.draw do
  root 'books#index'
  get 'books/new', to:'books#new'
  post 'books/new', to:'books#create'
  get 'books/show/:id', to:'books#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
