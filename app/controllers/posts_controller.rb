class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :post_info, only: [:show, :edit, :update, :destroy]
  before_action :user_verification, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:trip_date, :place, :title, :content).merge(user_id: current_user.id)
  end

  def post_info
    @post = Post.find(params[:id])
  end

  def user_verification
    redirect_to action: :index unless @post.user == current_user
  end
end
