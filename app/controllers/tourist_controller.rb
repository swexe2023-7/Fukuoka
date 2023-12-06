class TouristController < ApplicationController
  def new
    @tourist = Tourist.new
  end

  def create
    @tourist = Tourist.new(
      uid: params[:tourist][:uid],
      password: params[:tourist][:password],
      password_confirmation: params[:tourist][:password_confirmation])

    if @tourist.save
      puts "OK"
      redirect_to root_path
    else
      puts "NG"
      render 'new'
    end
  end

  def destroy
    tourist = Tourist.find(params[:id])
    tourist.destroy
    redirect_to root_path
  end

  def show
  end
end
