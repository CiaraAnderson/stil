class ShotsController < ApplicationController

  def new
    @shot = Shot.new
  end

  def index
  end

  def create
    @shot = Shot.create(shot_params)
    if @shot.valid?
      redirect_to root_path
    else
     render :new, status: :unprocessable_entity
    end
   
  end

  private 

  def shot_params
   params.require(:shot).permit(:message)
  end
end
