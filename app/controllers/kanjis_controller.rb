class KanjisController < ApplicationController
    before_action :find_kanji, only: [:show, :update, :destroy]

    def index
        @kanjis = Kanji.all
        render json: @kanjis, include: [:characters]
    end

    def show
        render json: @kanji
    end

    private

    def find_kanji
        @kanji = Kanji.find(params[:id])
    end

    def allowed_params
        params.permit(:onyomi, :kunyomi, :history)
    end
end
