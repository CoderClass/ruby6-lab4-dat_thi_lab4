class MessagesController < ApplicationController
  def index
    set_room
  end

  def create
    set_room
    @message = @room.messages.build(message_params)
    if @message.save

      redirect_to room_messages_path(@room)
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :username)
  end

  def set_room
    @room = Room.find(params[:room_id])
  end
end
