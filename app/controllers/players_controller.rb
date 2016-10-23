class PlayersController < ApplicationController
  def index
  	# @players = Player.paginate(page: params[:page], per_page: 1)
  	@players = Player.all
  end

  def new
  	@player = Player.new
  end

  def create
  	@player = Player.new(player_params)
  	if @player.save
  		flash[:success] = "The Player successfully created!"
  		redirect_to players_url
  	else
  		render 'new'
  	end
  end

  def edit
  	@player = Player.find(params[:id])
  end

  def update
  	@player = Player.find(params[:id])
  	if @player.update_attributes(player_params)
  		flash[:success] = "The Player information successfully updated."
  		redirect_to players_url
  	else
  		render 'edit'
  	end
  end


  private
  	def player_params
  		params.require(:player).permit(:name, :avatar)
  	end
end
