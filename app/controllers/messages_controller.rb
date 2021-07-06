class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]
  before_action :room_info, only: [:index, :create]

  def index
    @message = Message.new
    @users = @room.users
    @messages = @room.messages.includes(:user)
  end

  def create
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_messages_path(@room)
    else
      @messages = @room.messages.includes(:user)
      @users = @room.users
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end

  def room_info
    @room = Room.find(params[:room_id])
  end
end
