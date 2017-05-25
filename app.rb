require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    session[:player_1_HP] = 50
    session[:player_2_HP] = 50
    redirect '/play'
    end

    get '/play' do
      @player_1_name = $player_1.name
      @player_2_name = $player_2.name
      @player_1_HP = session[:player_1_HP]
      @player_2_HP = session[:player_2_HP]
      erb :play
    end

    get '/attack' do
      @player_1_name = $player_1.name
      @player_2_name = $player_2.name
      erb :attack
    end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
