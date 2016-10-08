Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'index#index'

  get '/journeys' => 'journeys#index'
  get '/journeys/new' => 'journeys#new'
  post '/journeys/' => 'journeys#create'
  get '/journeys/:id' => 'journeys#show'
  get '/journeys/:id/edit' => 'journeys#edit'
  patch '/journeys/:id' => 'journeys#update'
  delete '/journeys/:id' => 'journeys#destroy'

  get '/days/new' => 'days#new'
  post '/days/' => 'days#create'
  get '/days/:id' => 'days#show'
  get '/days/:id/edit' => 'days#edit'
  patch '/days/:id' => 'days#update'
  delete '/days/:id' => 'days#destroy'

  get '/entries/new' => 'entries#new'
  post '/entries/' => 'entries#create'
  get '/entries/:id/edit' => 'entries#edit'
  patch '/entries/:id' => 'entries#update'
  delete '/entries/:id' => 'entries#destroy'

  get '/comments/new' => 'comments#new'
  post '/comments/' => 'comments#create'
  get '/comments/:id/edit' => 'comments#edit'
  patch '/comments/:id' => 'comments#update'
  delete '/comments/:id' => 'comments#destroy'

  post '/likes/' => 'likes#create'
  delete '/likes/:id' => 'likes#destroy'

end
