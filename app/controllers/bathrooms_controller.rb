class BathroomsController < ApplicationController
  def index
    @bathrooms = Bathroom.all
  end

  def show
    @bathroom = Bathroom.find(params[:id])
    @user = @bathroom.user
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

  # This should probably redirect to My_Bathrooms
  def destroy
    @bathroom = Bathroom.find(params[:id])
    @bathroom.destroy
    redirect_to my_bathrooms_path, status: :see_other
  end

  def my_bathrooms
    @bathrooms = Bathroom.where(user: current_user)
  end

  private

  def bathroom_params
    params.require(:bathroom).permit(:price, :location, :description, :photo)
  end
end
