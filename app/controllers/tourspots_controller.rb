class TourspotsController < ApplicationController
  def new
    @tourspots = Sporspots.new
  end

  def create
    @tourspots = Tourspots.new(tour_id: params[:tour_id], spot_id: params[:spot_id])
    if @tourspots.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
  end
end
