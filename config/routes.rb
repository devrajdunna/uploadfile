Rails.application.routes.draw do
resources :myclicks, only: [:index, :new, :create, :destroy]
   root "myclicks#index"

  get 'myclicks/index'
  get 'myclicks/new'
  get 'myclicks/create'
  get 'myclicks/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
