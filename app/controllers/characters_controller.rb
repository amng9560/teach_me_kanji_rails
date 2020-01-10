class CharactersController < ApplicationController
    before_action :find_character, only: [:show, :update, :destroy]
    # before_action :find_words, only: [:index, :create]

    def index
        # if params[:symbol]
        #     @characters = @words.characters.where(symbol: params[:symbol])
        # else
        #     @characters = @words.characters
        # end
        @characters = Character.all
        render json: @characters, include: [:words]
    end

    def show
        render json: @character
    end

    def create
        @character = Character.create(character_params)
        
        redirect_to "http://localhost:3001/"
    end

    def update
        @character.update(character_params)
    end

    def destroy
        @character.destroy
        render status: 204
    end

    private
    # def find_words
    #     @words = Word.find(params[:word_id])
    # end

    def find_character
        @character = Character.find(params[:id])
    end

    def character_params
        params.permit(:symbol, :onyomi_1, :onyomi_2, :kunyomi_1, :kunyomi_2, :meaning, :stroke_gif)
    end
end
