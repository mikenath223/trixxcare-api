# frozen_string_literal: true

class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new
    if @user.valid? && @user.save
      render json: @user
    else
      render json @user.errors, status: 400
    end
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

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
