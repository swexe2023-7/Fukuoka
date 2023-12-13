class WelcomesController < ApplicationController
  def index
    @tourist = Tourist.all
  end
end
