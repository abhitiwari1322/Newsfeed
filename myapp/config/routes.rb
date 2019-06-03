Rails.application.routes.draw do
  get 'posts/index'
  get 'home/index'
  get 'book/list'
  get 'book/new'
  post 'book/create'
  patch 'book/update'
  get 'book/list'
  get 'book/show'
  get 'book/edit'
  get 'book/delete'
  get 'book/update'
  get 'book/show_subjects'
  resources :posts, :home, :book
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
