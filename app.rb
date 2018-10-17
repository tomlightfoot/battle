require 'sinatra'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Application
enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    $game.attack($game.current_turn)
    erb :attack
  end

  post '/Continue' do
    $game.switch_turn
    redirect '/play'
  end
end
