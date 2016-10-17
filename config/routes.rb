Rails.application.routes.draw do
  root 'pages#home'
  scope "/admin" do
  	get '/add_player', to: 'players#new'
  	post '/add_player', to: 'players#create'
  	resources :players
  end
end
