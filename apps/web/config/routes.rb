# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
post '/ratings/remove', to: 'ratings#delete', as: :remove_rating
post '/ratings', to: 'ratings#create', as: :new_rating
post '/gamesowned/remove', to: 'games_owned#remove', as: :remove_game_owned
post '/gamesowned', to: 'games_owned#create', as: :new_game_owned

post '/comments', to: 'comments#create'

post '/comment/create', to: 'comments#create', as: :new_comment

get '/games/new', to: 'games#new'
get '/games/:id', to: 'games#show'
post '/games/create', to: 'games#create', as: :game_create
get '/games/new', to: 'games#new', as: :new_game
get '/games', to: 'games#index', as: :game

get '/users/', to: 'users#index', as: :user
get '/users/:id', to: 'users#show'

post '/logout', to: 'logout#logout', as: :logout
post '/signup', to: 'signup#signup', as: :signup_create
get '/signup', to: 'signup#index', as: :signup
post '/login', to: 'login#login', as: :login_create
get '/login', to: 'login#index', as: :login

root to: 'home#index'
# resources :signup, only: [:index, :signup]
