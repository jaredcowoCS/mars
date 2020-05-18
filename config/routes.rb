Rails.application.routes.draw do
  # get 'agencies/index'
  # get 'agencies/new'
  # get 'agencies/create'
  # get 'agencies/show'
  # get 'agencies/edit'
  # get 'agencies/update'
  # get 'agencies/destroy'
  resources :agencies
  root :to => 'agencies#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
