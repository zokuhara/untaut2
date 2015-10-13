class RoomsController < ApplicationController

  before_action :authenticate_user!

  def index
    @rooms = Room.all
  end

  def show
    @rooms = Room.all
    @room = Room.find params[:id]
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new params.require(:room).permit(:room_name)
    if @room.save
      # redirect_to room_path(id: @room.id)
      redirect_to root_path
    else
      render :new
    end
  end

end
