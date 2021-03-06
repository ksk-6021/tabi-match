class RoomsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to user_path(current_user)
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end
