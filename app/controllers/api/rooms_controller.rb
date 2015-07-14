class Api::RoomsController < ApplicationController
  def index
    @rooms = Room.all.order(:name)
  end

  def show
    @room = Room.find(params[:id])
  end
end
