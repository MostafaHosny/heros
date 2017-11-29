class Api::HerosController < ApplicationController
	before_action :set_hero, only: [:show]
	
	def index 
		@heros = Hero.all
		render json: @heros 
	end

	def show
		render json: @hero
	end

	private

		def set_hero
			@hero = Hero.find(params[:id])
		end
end
