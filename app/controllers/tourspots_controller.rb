class TourspotsController < ApplicationController
  def new
    @tourspot = Tourspot.new
  end

  def create
    logger.debug(params)
    # @tourspot = Tourspot.new(tour_id: params[:tour_id], spot_id: params[:spot_id])
    @tourspot = Tourspot.new(tourspot_params)
    if @tourspot.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  private

  def tourspot_params
    params.require(:tourspot).permit(:tour_id, :spot_id)
  end

  def destroy
  end
  
  def search1
    # @spot = Spot.where(area: params[:area])
    # @spot = Spot.where(area: 1)
    @area = params[:area]
    # @spots = Spot.joins(:tourspots).where(tourspots: { tour_id: @area })
    @spots = Spot.search_by_area(@area)
  end
  
end
