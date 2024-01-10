class WelcomesController < ApplicationController
  def index
    @tourist = Tourist.all
  end
  
  def show
    render 'show'
  end
end
