Rails.application.routes.draw do

  #Gallery routes
  get 'gallery', to: 'images#index'
  get 'gallery/:id', to: 'images#show', as: 'image'
  authenticate :admin do
    resources :images, except: [:index, :show]
  end

  # Admin routes
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
