class PlayersController < ApplicationController
  def index
    @players = Player.all.each do |v|
      v[:point] = v[:victory] - v[:defeat] end.sort_by { |a| a[:point] }.reverse
  end
end
