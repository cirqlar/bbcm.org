Rails.application.routes.draw do
  get 'images/index'

  get 'images/show'

  get 'images/edit'

  get 'images/new'

  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
