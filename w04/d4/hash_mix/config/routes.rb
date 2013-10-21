HashMix::Application.routes.draw do


  get '/' => "search#search"
  get '/results' => 'search#results'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'

  get '/add_cat' => 'users#add_cat'


end


# new
  # this will give you a form to login
    # email
    # password
#create
  # actually store the session

# destroy
  # actually removes the userid from the session
    #session[:user_id] = nil
#== Route Map
# Generated on 18 Oct 2013 14:52
#
#     results GET    /results(.:format)        search#results
#       users GET    /users(.:format)          users#index
#             POST   /users(.:format)          users#create
#    new_user GET    /users/new(.:format)      users#new
#   edit_user GET    /users/:id/edit(.:format) users#edit
#        user GET    /users/:id(.:format)      users#show
#             PUT    /users/:id(.:format)      users#update
#             DELETE /users/:id(.:format)      users#destroy
#    sessions POST   /sessions(.:format)       sessions#create
# new_session GET    /sessions/new(.:format)   sessions#new
#     session DELETE /sessions/:id(.:format)   sessions#destroy
#       login GET    /login(.:format)          sessions#new
#      logout GET    /logout(.:format)         sessions#destroy
