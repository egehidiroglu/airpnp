class BathroomsController < ApplicationController
  def index
    # raise
    if params[:query].present?
      # raise
      @bathrooms = Bathroom.where(description: params[:query])
    else
      @bathrooms = Bathroom.all
    end
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

  def edit
    @bathroom = Bathroom.find(params[:id])
  end

  def update
    @toilet = Bathroom.find(params[:id])
    @toilet.update(bathroom_params)
    redirect_to bathroom_path(@toilet)
  end

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
