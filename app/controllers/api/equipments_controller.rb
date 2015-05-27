class Api::EquipmentsController < ApplicationController
  def index
    @images = Image.where(:equipment => true)
  end
end
