class PlayersController < ApplicationController
  def index
    @players = Player.all.each do |v|
      v[:point] = v[:victory] - v[:defeat] end.sort_by { |a| a[:point] }.reverse
  end

  def edit
    @player = Player.find(params[:id])
  end

  def show
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    @player.update(player_params)
    redirect_to players_path(@players)
  end

  private

  def player_params
    params.require(:player).permit(:name, :position, :victory, :defeat)
  end
end
