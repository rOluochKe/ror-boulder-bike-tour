Rails.application.routes.draw do
  root 'pages#home'
  get '/photos' => 'pages#photo'
  get '/riders' => 'pages#rider'
  get '/slogan' => 'pages#slogan'
end
