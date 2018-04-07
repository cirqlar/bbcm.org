Rails.application.routes.draw do

  # Gallery routes
  get 'gallery', to: 'images#index'
  resources :images, only: [:show]
  authenticate :admin do
    resources :images, except: [:index, :show]
  end

  # News routes
  resources :news

  # Admin routes
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
