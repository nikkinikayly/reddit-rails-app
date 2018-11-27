Rails.application.routes.draw do
  
  root 'subs#index'
  # get 'subs/new'
  # get '/subs/new', to: 'subs#new'

  # post '/subs', to: 'subs#create'
  # # :id ... placeholder for the id number
  # put '/subs/:id', to: 'subs#update'

  # delete '/subs/:id', to: 'subs#delete'

  #embedded or nested routes 
  resources :subs do 
    resources :topics
  end

end
