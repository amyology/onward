class DaysController < ApplicationController

  def new
    @day = Day.new
  end

  def create
    @journey = Journey.find(params[:id])
    @day = Day.new(
      daynumber: params[:daynumber],
      location: params[:location],
      journey_id: @journey.id,
      public: params[:public]
      )
    @day.save
    redirect_to "/days/#{@day.id}"
  end

  def show
    @day = Day.find(params[:id])
    @journey = Journey.find_by(params[@day.journey_id])
  end

  def edit
    @day = Day.find(params[:id])
  end

  def update
    @day = Day.find(params[:id])
    @day.update(
      daynumber: params[:daynumber],
      location: params[:location],
      public: params[:public]
      )
    redirect_to "/days/#{@day.id}"
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
    redirect_to "/journeys"
  end

end
