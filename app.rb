require 'sinatra'
require "sinatra/reloader" if development?


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
    session[:Player1] = params[:Player1]
    session[:Player2] = params[:Player2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:Player1] 
    @player_2 = session[:Player2]
    erb(:play)
  end

  # post '/play' do
  #   redirect '/attack'
  # end

  get '/attack' do
    @player_1 = session[:Player1] 
    @player_2 = session[:Player2]
    erb(:attack)
  end

  run! if app_file == $0
end

