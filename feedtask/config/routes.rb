Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'feed/list'
   get 'feed/new'
   post 'feed/create'
   patch 'feed/update'
   get 'feed/list'
   get 'feed/show'
   get 'feed/edit'
   get 'feed/delete'
   get 'feed/update'
   post 'feed/update'
   get 'feed/show_categories'
end
