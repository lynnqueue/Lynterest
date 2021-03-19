class Api::UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      log_in!(@user)
      render "api/users/show"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.includes(:boards, :pins, :boards_pins).find(params[:id])
    render "api/users/show"
  end

  def index
    @users = User.all
    render "api/users/index"
  end
  
  def edit
    @user = selected_user
    render "api/users/show"
  end

  def update
    @user = selected_user
    if @user.update(edit_user_params)
      render "api/users/show"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private
  def selected_user
    User.includes(:boards, :pins, :boards_pins).find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:email, :password)
  end

  def edit_user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :description, :location, :photo)
  end

end
