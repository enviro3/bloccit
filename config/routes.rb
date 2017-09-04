Rails.application.routes.draw do

  #refactoring with the resources method. Call resources method and pass it a Symbol
  resources :topics do
    resources :posts, expect: [:index]
  end

  resources :topics do
    resources :sponsored_posts, expect: [:index]
  end

  get 'about' => 'welcome#about'

  root 'welcome#index'

end
