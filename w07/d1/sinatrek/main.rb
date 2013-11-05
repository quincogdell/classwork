require 'sinatra'
require 'sinatra/reloader'
require 'json'

CREW = [
  nil,
  { name: 'Kirk',   shirt_color: 'yellow', rank: 'Captain'         },
  { name: 'Spock',  shirt_color: 'blue',   rank: 'First Officer'   },
  { name: 'Bones',  shirt_color: 'blue',   rank: 'Doctor'          },
  { name: 'Sulu',   shirt_color: 'yellow', rank: 'Chief Helmsman'  },
  { name: 'Scotty', shirt_color: 'red',    rank: 'Chief Engineer'  }
]

get '/' do
  erb :index
end

get '/crew' do
  content_type :json
  [
    { id: 1, name: 'Kirk'  },
    { id: 2, name: 'Spock' },
    { id: 3, name: 'Bones' },
    { id: 4, name: 'Sulu'  },
    { id: 5, name: 'Scotty'}
  ].to_json
end

get '/crew/:id' do
  content_type :json
  CREW[params[:id].to_i].to_json
end
