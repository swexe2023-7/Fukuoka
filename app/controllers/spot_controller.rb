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
    @spot = Spot.new(
      name: params[:spot][:name], 
      picture: picture, 
      area: params[:spot][:area], 
      age: params[:spot][:age], 
      number_of_people: params[:spot][:number_of_people], 
      purpose: params[:spot][:purpose])
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
  end

  def show
    @spot = Spot.find(params[:id])
  end
  
  def get_spot
    spot = Spot.find(params[:id])
    send_data spot.picture, disposition: :inline, type: 'spot/png'
  end
end
