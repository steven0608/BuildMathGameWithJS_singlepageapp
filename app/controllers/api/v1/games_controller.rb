
class Api::V1::GamesController < ApplicationController

  def index
    @games = Game.all
    render json: @games
  end

  def create
    @game = Game.create(game_params)
  end

  def show
    @game = Game.find(params[:id])
    render json: @game.to_json(include: :user)
  end

  private

  def game_params
    params.permit(:user_id, :score)
  end

  def find_game
    @game = Game.find(params[:id])
  end

end
