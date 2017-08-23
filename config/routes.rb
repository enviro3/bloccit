Rails.application.routes.draw do
  resources :advertisements
  #refactoring with the resources method. Call resources method and pass it a Symbol
  resources :posts

  get 'about' => 'welcome#about'

  root 'welcome#index'

end
