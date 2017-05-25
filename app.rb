require 'sinatra/base'

class Battle < Sinatra::Base
  require_relative './lib/player'

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
    end

    get '/play' do
      @player_1_name = $player_1.name
      @player_2_name = $player_2.name
      @player_1_HP = $player_1.hit_points
      @player_2_HP = $player_2.hit_points
      erb :play
    end

    get '/attack' do
      @player_1_HP = $player_1.hit_points
      @player_2_HP = $player_2.hit_points
      @player_1_name = $player_1.name
      @player_2_name = $player_2.name
      erb :attack
    end

    post '/reduce_hit_points' do
      $player_2.reduce_hit_points
      redirect '/attack'
    end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
