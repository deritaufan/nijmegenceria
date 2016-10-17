class PlayersController < ApplicationController
  def index
  end

  def new
  	@player = Player.new
  end

  def create
  	@player = Player.new(player_params)
  	if @player.save
  		redirect_to players_url
  	else
  		render 'new'
  	end
  end


  private
  	def player_params
  		params.require(:player).permit(:name, :avatar)
  	end
end
