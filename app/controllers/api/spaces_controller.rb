class Api::SpacesController < ApplicationController
  def index
    @images = Image.where(:space => true)
  end
end
