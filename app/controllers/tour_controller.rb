class TourController < ApplicationController
  def index
    @tours = Tour.all
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(name: params[:name], price: params[:price])
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
end
