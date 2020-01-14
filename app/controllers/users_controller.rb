class UsersController < ApplicationController
    skip_before_action :authenticate_request, except: [:show]

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
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
            render json: { error: @user.errors.full_messages }
        end
    end
end
