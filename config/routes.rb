Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'pages#home'

get 'about' => 'pages#about'

resources :articles

get 'signup' => 'users#new'

resources :users, except: [:new]
# post 'users' => 'users#create' instead of what's above this

end