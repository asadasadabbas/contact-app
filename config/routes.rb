Rails.application.routes.draw do
  get 'home/index'
  devise_for :user
  resources :contacts, param: :uuid
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'contacts#index'

end
