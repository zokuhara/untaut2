Rails.application.routes.draw do

  root 'rooms#index'

  get 'rooms/:id' => 'rooms#show', as: :room
  get 'rooms' => 'rooms#new', as: :new_room
  post '/rooms' => 'rooms#create', as: :rooms

  get 'users/new' => 'users#new', as: :sign_up
  post '/users' => 'users#create', as: :users

  get 'log_in' => 'sessions#new', as: :log_in
  post 'log_in' => 'sessions#create'
  delete 'log_in' => 'sessions#delete', as: :log_out




  namespace :api do
    get 'rooms/:id' => 'rooms#show'
    post 'rooms/:id/messages' => 'messages#create'

  end

end
