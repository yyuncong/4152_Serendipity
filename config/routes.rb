Rails.application.routes.draw do


  get 'home', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Google authentications routes
  root :to => 'sessions#index'
  # Routes for Google authentication
  get '/auth/:provider/callback', to: 'sessions#googleAuth'
  get '/auth/failure', to: redirect('/')

  delete 'logout', to: 'sessions#logout'

  # Posts
  get '/posts', to: 'posts#index', as: 'posts'
  post '/posts', to: 'posts#create', as: 'create_post'
  delete '/post/:id', to: 'posts#destroy', as: 'del_post'
  post '/post/:id', to: 'posts#update', as: 'update_post'
  get '/posts/new', to: 'posts#new', as: 'posts_new'
  get '/post/:id', to: 'posts#show', as: 'show_post'
  get '/posts/tag/:tag', to: 'posts#show_tag_posts', as: 'show_tag_posts'
  
  # /profiles
  get '/profile', to: 'profiles#show', as: 'profile'
  get '/profile/new', to: 'profiles#new', as: 'new_profile'
  post '/profile', to: 'profiles#create'
  put '/profile/:id', to: 'profiles#update', as: 'put_profile'
  get '/profile/:id', to: 'profiles#display', as: 'display_profile'

  # likes
  resources :posts do
    resources :likes
  end
end
