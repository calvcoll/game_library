# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
get '/users/', to: 'users#index', as: :user
get '/users/:id', to: 'users#show'
post '/logout', to: 'logout#logout', as: :logout
post '/signup', to: 'signup#signup', as: :signup_create
get '/signup', to: 'signup#index', as: :signup
post '/login', to: 'login#login', as: :login_create
get '/login', to: 'login#index', as: :login
root to: 'home#index'
# resources :signup, only: [:index, :signup]
