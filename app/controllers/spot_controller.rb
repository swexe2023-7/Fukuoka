class SpotController < ApplicationController
  def index
    @spot = Spot.all
  end

  def new
    puts "render new"
    @spot = Spot.new
  end

  def create
    puts "render create"
    picture = params[:spot][:picture].read
    picture2 = params[:spot][:picture2].read
    @spot = Spot.new(
      name: params[:spot][:name], 
      picture: picture, 
      pictureinfo: params[:spot][:pictureinfo],
      picture2: picture2,
      pictureinfo2: params[:spot][:pictureinfo2],
      area: params[:spot][:area], 
      purpose: params[:spot][:purpose],
      address: params[:spot][:address2],
      detail: params[:spot][:detail])
    if @spot.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    spot = Spot.find(params[:id])
    spot.destroy
    redirect_to root_path
  end

  def edit
    @spot = Spot.find(params[:id])
  end

  def show
    Rails.logger.debug "params[:id]: #{params[:id]}"
    @spot = Spot.find(params[:id])
  end
  
  def get_spot
    spot = Spot.find(params[:id])
    send_data spot.picture, disposition: :inline, type: 'spot/png'
  end
  
  def get_spot2
    spot = Spot.find(params[:id])
    send_data spot.picture2, disposition: :inline, type: 'spot/png'
  end
  
  def update
    spot = Spot.find(params[:id])
    picture = params[:spot][:picture].read
    picture2 = params[:spot][:picture2].read
    Spot.update(
      name: params[:spot][:name], 
      picture: picture, 
      picture2: picture2,
      area: params[:spot][:area], 
      purpose: params[:spot][:purpose],
      address: params[:spot][:address2],
      detail: params[:spot][:detail])
    redirect_to '/'
  end
  
  def self.search_by_area(area)
    joins(:tourspots).where(tourspots: { tour_id: area })
  end
  
  def search1
    @spot = Spot.all
  end
  
  def search2
    @spot = Spot.all
  end
  
  def search3
    @spot = Spot.all
  end
  
  def search4
    @spot = Spot.all
  end
  
  def search_guests1
    @spot = Spot.all
  end
  
end
