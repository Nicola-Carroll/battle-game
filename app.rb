require 'sinatra'
require "sinatra/reloader" if development?
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
    $player_1 = Player.new(params[:Player1])
    $player_2 = Player.new(params[:Player2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb(:play)
  end

  # post '/play' do
  #   redirect '/attack'
  # end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_2.reduce_hp(10)
    erb(:attack)
  end

  run! if app_file == $0
end

