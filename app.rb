require 'sinatra'

class Battle < Sinatra::Application
  get '/' do
    erb(:app)
  end

  post '/names' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    erb(:plays)
  end
end
