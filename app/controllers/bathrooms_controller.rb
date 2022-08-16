class BathroomsController < ApplicationController
  def show
    @bathroom = Bathroom.find(params[:id])
    @user = @bathroom.user
  end
end
