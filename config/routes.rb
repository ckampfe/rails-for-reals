Rblog::Application.routes.draw do

  get '/', :to => 'posts#index'

  get '/posts/new', :to => 'posts#new'

  get '/posts/:id', :to => 'posts#show'

  post '/posts/new', :to => 'posts#create'

  get '/posts/:id/edit', :to => 'posts#edit'

  put '/posts/:id/edit', :to => 'posts#update'

end
