class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show, :destroy]


  def index
    @users = User.all
  end

  def new
    @user= User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User added #{@user.email}"
      redirect_to users_path
    else
      render 'new'
    end
  end

  def update
    if @user.update(user_params)
      flash[:success] = "Profile of #{@user.email} was  updated"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def destroy
    @user.destroy
    flash[:success] = "User deleted"
      redirect_to users_path

  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    # List of common params
      list_params_allowed =[ :email, :password,
        :password_confirmation]
        # Add the params only for admin
      list_params_allowed << :admin if current_user.admin?
    params.require(:user).permit(list_params_allowed)
  end
end
