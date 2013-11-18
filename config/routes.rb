Rblog::Application.routes.draw do

  resources :posts
  root :to => "posts#index"

  # get '/',               :to => 'posts#index'

  # get '/posts/new',      :to => 'posts#new'

  # get '/posts/:id',      :to => 'posts#show'

  # post '/posts/',        :to => 'posts#create'

  # get '/posts/:id/edit', :to => 'posts#edit'

  # put '/posts/:id/',     :to => 'posts#update'

  # delete '/posts/:id/',  :to => 'posts#destroy'

end
