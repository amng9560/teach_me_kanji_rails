class CharactersController < ApplicationController
    before_action :find_character, only: [:show, :update, :destroy]

    def index
        @characters = Character.all
        render json: @characters
    end

    def show
        render json: @character
    end

    def create
        @character = Character.create(allowed_params)
        
        redirect_to "http://localhost:3001/"
    end

    def update
        @character.update(allowed_params)
    end

    def destroy
        @character.destroy
        render status: 204
    end

    private

    def find_character
        @character = Character.find(params[:id])
    end

    def allowed_params
        params.permit(:title, :content)
    end
end
