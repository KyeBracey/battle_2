require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]) )
    redirect '/play'
    end

    get '/play' do
      $game.increase_turn_by_one
      @game = $game
      erb :play
    end

    get '/attack' do
      @game = $game
      erb :attack
    end

    get '/reduce_hit_points' do
      $game.attack
      redirect '/attack'
    end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
