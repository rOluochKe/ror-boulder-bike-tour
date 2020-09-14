Rails.application.routes.draw do
  root 'pages#home'
  get '/gallery' => 'pages#gallery'
  get '/riders' => 'riders#index'
  get '/location' => 'pages#location'
  resources :contests, only: [:new, :create, :index]
end
