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
        word = Word.create_word(Word.new(word_params), params[:user_id])
        render json: word
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
