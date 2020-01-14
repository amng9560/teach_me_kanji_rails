class WordsController < ApplicationController
    before_action :find_word, only: [:show, :update, :destroy]
    skip_before_action :authenticate_request
    # before_action :find_character, only: [:index, :create]

    def index
        @words = Word.all
        render json: @words
    end

    def show
        render json: @word
    end

    def create
        @word = Word.new(word_params)
  
        characters = @word.word.chars()
        characters.each do |character|
            character = Character.find_by(symbol: character)
            if character
                # byebug
                @word.characters << character
            end
        end
        if @word.characters.length != 0
            @word.save
        end
        render json: @word
    end

    def update
        @word.update(word_params)
    end

    def destroy
        @word.destroy
        render status: 204
    end

    private
    # def find_character
    #     @character = Character.find(params[:character_id])
    # end

    def find_word
        @word = Word.find(params[:id])
    end

    def word_params
        params.permit(:word, :meaning)
    end
end
