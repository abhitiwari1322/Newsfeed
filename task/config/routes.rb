Rails.application.routes.draw do
  get 'newsfeed/index'
   get 'newsfeed/new'
   post 'newsfeed/create'
   patch 'newsfeed/update'
   get 'newsfeed/index'
   get 'newsfeed/show'
   get 'newsfeed/edit'
   get 'newsfeed/delete'
   get 'newsfeed/update'
   get 'newsfeed/show_newsfeeds'
  resources :newsfeeds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
