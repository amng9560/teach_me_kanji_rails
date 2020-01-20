class QuestionsController < ApplicationController
    before_action :find_question, only: [:show, :update, :destroy]
    skip_before_action :authenticate_request

    def index
        @questions = Question.all
        render json: @questions, include: [:characters]
    end

    def show
        render json: @question
    end

    def create
        @question = Question.create(question_params)
        
        render json: @question
    end

    private
    def find_question
        @question = Question.find(params[:id])
    end

    def question_params
        params.permit(:answer, :options)
    end
end
