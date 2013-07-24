Omrails::Application.routes.draw do

  resources :pins
  devise_for :users

  root :to => 'pins#index'
  get 'about' => 'pages#about'

end