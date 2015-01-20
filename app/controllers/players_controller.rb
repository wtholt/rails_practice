class PlayersController < ApplicationController
	def show
		@player = Player.find params[:id]
	end


	def new
		@player = Player.new
	end

	def create
		@player = Player.create player_params
		redirect_to root_path
	end

	def edit
		@player = Player.find params[:id]
	end

	def update
		@player = Player.find params[:id]
		@player.update_attributes player_params
		redirect_to root_path
	end

	def destroy
		@player = Player.find params[:id]
		@player.delete
		redirect_to root_path
	end



private
	def player_params
		params.require(:player).permit(
			:name,
			:position,
			:age,
			:nationality
		)
	end





end
