class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def create
    @room = Room.create(room_params)
    if @room.persisted?
      redirect_to room_path(@room)
    else
      flash[:error] = 'Cannot create new room'
      redirect_back
    end
  end

  def show
    @room = Room.find(params[:id])
    redirect_to room_messages_path(@room)
  end

  private
  def room_params
    params.require(:room).permit(:name)
  end
end
