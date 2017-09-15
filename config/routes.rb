Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'pages#home'
get 'about' => 'pages#about'

resources :articles

get 'signup' => 'users#new'
resources :users, except: [:new]
# post 'users' => 'users#create' instead of what's above this
get 'login' => 'sessions#new'
post 'login' => 'sessions#create'
delete 'logout' => 'sessions#destroy'

resources :categories, except: [:destroy]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes" or "rails routes".

  # You can have the root of your site routed with "root"

end