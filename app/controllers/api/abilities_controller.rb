class Api::AbilitiesController < ApplicationController
    before_action :set_ability, only: [:show]
    before_action :set_hero, only: [:index]

	def index 
		if @hero 
			@abilities = @hero.abilities
		else
			@abilities  = Ability.all
		end
		render json: @abilities 
	end 

	def show 
     render json: @ability
	end

	private 

		def set_ability
			@ability = Ability.find(params[:id])
		end
		def set_hero
        	@hero = Hero.find(params[:hero_id])
     	end

end
