Rails.application.routes.draw do
  root 'pages#home'
  get '/gallery' => 'galleries#index'
  get '/riders' => 'riders#index'
  get '/location' => 'riders#location'
  resources :contests, only: [:new, :create, :index]
end
