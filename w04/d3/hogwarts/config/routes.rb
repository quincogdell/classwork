Hogwarts::Application.routes.draw do

# exact same thing root = '/'
 # get '/' => 'home#index'
  root to: 'houses#index'
  # get '/houses' => 'houses#index'
  # get '/houses/new' => 'houses#new'
  # post '/houses' => 'houses#create'
  resources :houses
  resources :students
  resources :spells
  resources :courses

  # get '/students' => 'students#index'
  # get '/students/new' => 'students#new'
  # post '/students' => 'students#create'
end
#== Route Map
# Generated on 17 Oct 2013 12:42
#
#       houses GET    /houses(.:format)            houses#index
#              POST   /houses(.:format)            houses#create
#    new_house GET    /houses/new(.:format)        houses#new
#   edit_house GET    /houses/:id/edit(.:format)   houses#edit
#        house GET    /houses/:id(.:format)        houses#show
#              PUT    /houses/:id(.:format)        houses#update
#              DELETE /houses/:id(.:format)        houses#destroy
#     students GET    /students(.:format)          students#index
#              POST   /students(.:format)          students#create
#  new_student GET    /students/new(.:format)      students#new
# edit_student GET    /students/:id/edit(.:format) students#edit
#      student GET    /students/:id(.:format)      students#show
#              PUT    /students/:id(.:format)      students#update
#              DELETE /students/:id(.:format)      students#destroy
