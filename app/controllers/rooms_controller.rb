class RoomsController < ApplicationController

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

  def show
    @room = Room.find(params[:id])
    @users  = @room.users
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end
