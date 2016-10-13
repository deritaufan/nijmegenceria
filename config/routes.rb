Rails.application.routes.draw do
  root 'pages#home'
  get 'players/new'
end
