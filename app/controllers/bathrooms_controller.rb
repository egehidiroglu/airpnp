class BathroomsController < ApplicationController
  def index
    @bathrooms = Bathroom.all
  end

  def show
  end
end
