class DaysController < ApplicationController

  def new

  end

  def create
    @day = Day.new(day_params)
    if @day.save
      redirect_to "/days/#{@day.id}"
    else
      redirect_to request.referer
    end
  end

  def show
    @day = Day.find(params[:id])
    @journey = Journey.find(@day.journey_id)
    @entries = @day.entries
  end

  def edit
    @day = Day.find(params[:id])
    @journey = Journey.find(@day.journey_id)
  end

  def update
    @day = Day.find(params[:id])
    @day.update(day_params)
    redirect_to "/days/#{@day.id}"
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
    @journey = Journey.find(@day.journey_id)
    redirect_to "/journeys/#{@journey.id}"
  end

  private

  def day_params
    params.require(:day).permit(:daynumber, :location, :journey_id, :public)
  end

end
