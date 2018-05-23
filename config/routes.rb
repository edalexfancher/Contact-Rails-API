Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  get 'friends/index'
  get 'friends/destroy'
  
  resources :friend_requests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
