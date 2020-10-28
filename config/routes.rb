Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'
  
  resources :pages, only: [:index, :show] do
  	resources :musics, only: [:create]
  end

  resources :channels do
  	resources :musics
	end

	resources :musics do
		resources :likes
	end

  resources :musics do
    resources :subscription_musics, only: [:create, :destroy]
  end

  resources :musics do 
    resources :comment_musics
  end

  resources :page_subscriptions, only: [:index]

  resources :musics do
    resources :playlists, only: [:create, :destroy]
  end

  resources :page_playlists, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
