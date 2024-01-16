class TourController < ApplicationController
  def index
    @tour = Tour.all
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(name: params[:tour][:name],
    price: params[:tour][:price],
    area: params[:tour][:area],
    age: params[:tour][:age],
    number_of_people: params[:tour][:number_of_people],
    schedule: params[:tour][:schedule])
    if @tour.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def destroy
    tour = Tour.find(params[:id])
    tour.destroy
    redirect_to root_path
  end
  
  def show
    Rails.logger.debug "params[:id]: #{params[:id]}"
    @tourspot = Tourspot.where(tour_id: params[:id])
    # @tour = Tour.find(params[:id])
  end
  
  def search_guests1
    @tour = Tour.all
  end
  
  def search_guests2
    @tour = Tour.all
  end
  
  def search_guests3
    @tour = Tour.all
  end
  
end
