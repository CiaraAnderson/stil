class ShotsController < ApplicationController

  def new
    @shot = Shot.new
  end

  def index
  end

  def create
    @shot = Shot.create(shot_params)
    redirect_to root_path
  end

  private 

  def shot_params
   params.require(:shot).permit(:message)
  end
end
