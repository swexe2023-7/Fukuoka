class TourController < ApplicationController
  def index
    @tours = Tour.all
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(name: params[:tour][:name],
    price: params[:tour][:price],
    age: params[:spot][:age], 
    number_of_people: params[:spot][:number_of_people])
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
