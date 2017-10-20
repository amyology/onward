class DaysController < ApplicationController

  def new

  end

  def create
    @day = Day.new(
      daynumber: params[:daynumber],
      location: params[:location],
      journey_id: params[:journey_id],
      public: params[:public]
      )
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
    @journey = Journey.find(@day.journey_id)
    redirect_to "/journeys/#{@journey.id}"
  end

end
