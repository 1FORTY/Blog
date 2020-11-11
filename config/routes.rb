Rails.application.routes.draw do
  get 'contacts/new'
  post 'contacts/create'
  get 'home/index'

  resources :articles
end
