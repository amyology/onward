class JourneysController < ApplicationController

  def index
    @journeys = Journey.all
  end

  def new
    @journey = Journey.new
  end

  def create
    @journey = Journey.new(journey_params)
    if @journey.save
      redirect_to "/journeys/#{@journey.id}"
    else
      render :new
    end
  end

  def show
    @journey = Journey.find(params[:id])
    @days = @journey.days.sort
  end

  def edit
    @journey = Journey.find(params[:id])
  end

  def update
    @journey = Journey.find(params[:id])
    @journey.update(journey_params)
    redirect_to "/journeys/#{@journey.id}"
  end

  def destroy
    @journey = Journey.find(params[:id])
    @journey.destroy
    redirect_to "/journeys"
  end

  private

  def journey_params
    params.require(:journey).permit(:place, :startdate, :enddate, :user_id, :public)
  end

end
