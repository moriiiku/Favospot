Rails.application.routes.draw do
  get 'top/top'
	root to: 'top#top'

  resources :users
  resources :posts
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
