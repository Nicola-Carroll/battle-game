require 'sinatra'
require "sinatra/reloader" if development?
require_relative 'lib/game'
require_relative 'lib/player'

class Battle < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $game = Game.new(params[:Player1], params[:Player2], player_class: Player)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player1
    @player_2 = $game.player2
    @current_player = $game.current_player.name
    erb(:play)
  end

  get '/attack' do
    @player_1 = $game.player1
    @player_2 = $game.player2
    $game.attack(10)
    erb(:attack)
  end

  run! if app_file == $0
end

