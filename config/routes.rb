Rails.application.routes.draw do

  resources :estimates do
    resource :download, only: [:show]
  end 
  root 'estimates#index' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
