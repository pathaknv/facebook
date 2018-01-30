Rails.application.routes.draw do
  get 'posts/view'

  get 'posts/posts'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  resources :users do
    resources :addresses
    resources :posts
  end
end
