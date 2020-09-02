module Api::V1
  class UsersController < ApplicationController
    def index
      @users = User.all
      json_response(@users)
    end

    def create
      @user = User.create!(user_create_params)
      head :no_content
    end

    def find
      @user = User.find_by(username: user_params)
      if @user
        render json: @user
      else
        @errors = @user.errors.full_messages
        render json: @errors
      end
    end

    def user
      json_response("user": current_user[:username])
    end

    private

    def user_create_params
      params.permit(:username, :password)
    end

    def user_params
      params.permit(:username)
    end
  end
end
