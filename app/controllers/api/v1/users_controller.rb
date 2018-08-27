class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users.to_json(include: :games)
  end

  def show
    @user = User.find(params[:id])
    render json: @user.to_json(include: :games)
  end

  def create
    @user = User.create(user_params)
  end

  private

  def user_params
    params.permit(:name)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
