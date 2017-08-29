Rails.application.routes.draw do

  #refactoring with the resources method
  resources :posts
  resources :questions

  get 'about' => 'welcome#about'

  root 'welcome#index'



end
