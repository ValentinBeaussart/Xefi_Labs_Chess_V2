class PlayersController < ApplicationController
  def index

      @players  = Player.all
       @players.map do |score|
     score[:point] = score[:victory] - score[:defeat]
    #  @players.order(point: :asc)
    end
    # @players.order(point: :asc)
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

  def scoring

  end
  private

  def player_params
    params.require(:player).permit(:name, :position, :victory, :defeat, :point)
  end
end
