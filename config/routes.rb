Rails.application.routes.draw do

  #Gallery routes
  get 'gallery', to: 'images#index'
  authenticate :admin do
    resources :images, except: [:index]
  end

  # Admin routes
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
