Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :tasks
  resources :works
end
