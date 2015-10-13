class Api::MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @message = Message.new params.require(:message).permit(:body)

    @message.room = Room.find params[:id]

    @message.user = @current_user
    if @message.save
      render status: 201, json: @message
    else
      render status: 422, json: @message.errors
    end
  end
end
