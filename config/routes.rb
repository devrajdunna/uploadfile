Rails.application.routes.draw do

  devise_for :mylogs
#devise_for :users do
 # get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session

  devise_for :users
  resources :users
  resources :myclicks, only: [:index, :new, :create, :destroy]
  
  root "myclicks#index"

  get 'myclicks/index'
  get 'myclicks/new'
  get 'myclicks/create'
  get 'myclicks/destroy'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
