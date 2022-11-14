class PlayersController < ApplicationController
  def index
    @players = Player.where(user: current_user)
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.user = current_user
  end

  private

  def player_params
    params.require(:player).permit(:name, :position, :victory, :defeat)
  end
end
