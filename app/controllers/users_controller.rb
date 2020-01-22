class UsersController < ApplicationController
    skip_before_action :authenticate_request, except: [:show]

    def index
        @users = User.all
        render json: @users, include: [:words]
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: [:words]
    end

    def create
        @user = User.new({
            first_name: params[:first_name],
            last_name: params[:last_name],
            username: params[:username],
            password: params[:password]
        })

        if @user.valid?
            @user.save
            render json: @user
        else
            render json: { error: @user.errors.full_messages }, status: 409
        end
    end

    def update
        @user = User.find(params[:id])

        if params[:removeword]
            UserWord.find_by(user_id: params[:id], word_id: params[:removeword]).destroy
        end
    end
end
