class SpotController < ApplicationController
  def index
    @spot = Spot.all
  end

  def new
    @spot = Spot.new
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def show
  end
end
