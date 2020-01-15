class WordsController < ApplicationController
    before_action :find_word, only: [:show, :update, :destroy]
    skip_before_action :authenticate_request

    def index
        @words = Word.all
        render json: @words
    end

    def show
        render json: @word
    end

    def create
        @word = Word.new(word_params)

        if Word.exists?(word: @word.word)
            word = Word.find_by(word: @word.word)
            if params[:user_id]
                UserWord.create(
                    word_id: word.id, 
                    user_id: params[:user_id]
                )
            end
        else 
            characters = @word.word.chars()
            characters.each do |character|
                character = Character.find_by(symbol: character)
                if character
                    @word.characters << character
                end
            end
            if @word.characters.length != 0
                @word.save
                if params[:user_id]
                    UserWord.create(
                        word_id: @word.id, 
                        user_id: params[:user_id]
                    )
                end
            end
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

    def find_word
        @word = Word.find(params[:id])
    end

    def word_params
        params.permit(:word, :meaning)
    end
end
