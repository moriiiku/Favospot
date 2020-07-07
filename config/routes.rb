Rails.application.routes.draw do

  get 'contacts/new'
  get 'contacts/create'
  devise_for :admins
  devise_for :users
  resources :users, only: [:index, :show, :new, :create, :destroy, :edit, :update]
  delete 'destroy_user', to: 'users#destroy'

  resources :posts do
    resources :post_images
  end

  get 'posts/all' #これは削除
  post 'contacts/new'

  	get 'top/infomation'
  	get 'top/contact' # 消すよ
	root 'posts#index'


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
