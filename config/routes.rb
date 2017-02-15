Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "songs#index"
  # resources: songs, only: [:index]

  get '/songs' => "songs#index"
  get '/users/new' => "users#new"
  post '/users' => "users#create"
end
