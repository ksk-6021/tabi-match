class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update]
  before_action :user_verification,  only: [:edit, :update]

  def show
    @user = User.find(params[:id])
    posts = Post.all.order(created_at: :desc)
    @rooms = @user.rooms
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :introduction, :avatar)
  end

  def user_verification
    redirect_to action: :index unless @post.user == current_user
  end
end
