Rails.application.routes.draw do
  
  devise_for :users

  root to: 'index#index'
  get '/' => 'index#index'

  resources :journeys
  resources :days
  resource :entries
  resource :commments

  post '/likes/' => 'likes#create'
  delete '/likes/:id' => 'likes#destroy'

end
