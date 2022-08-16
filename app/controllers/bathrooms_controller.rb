class BathroomsController < ApplicationController
  def index
    @bathrooms = Bathroom.all
  end

  def show
  end

  def new
    @bathroom = Bathroom.new
  end

  def create
    @bathroom = Bathroom.new(bathroom_params)
    @bathroom.user = current_user
    if @bathroom.save
      redirect_to bathroom_path(@bathroom)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bathroom_params
    params.require(:bathroom).permit(:price, :location, :description)
  end
end
