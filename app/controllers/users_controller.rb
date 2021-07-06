class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]
  before_action :user_info, only: [:show, :edit, :update]
  before_action :user_verification, only: [:edit, :update]

  def show
    posts = Post.all.order(created_at: :desc)
    @rooms = @user.rooms
  end

  def edit
  end

  def update
    if @user.update!(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :introduction, :avatar)
  end

  def user_info
    @user = User.find(params[:id])
  end

  def user_verification
    redirect_to root_path unless @user.id == current_user.id
  end
end
