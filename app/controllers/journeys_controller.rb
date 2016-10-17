class JourneysController < ApplicationController

  def index
    @journeys = Journey.all
  end

  def new
    @journey = Journey.new
  end

  def create
    @journey = Journey.new(
      place: params[:place],
      startdate: params[:startdate],
      enddate: params[:enddate],
      user_id: params[:user_id],
      public: params[:public]
      )
    if @journey.save
      redirect_to "/journeys/#{@journey.id}"
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
    @journey.update(
      place: params[:place],
      startdate: params[:startdate],
      enddate: params[:enddate],
      user_id: params[:user_id],
      public: params[:public]
      )
    redirect_to "/journeys/#{@journey.id}"
  end

  def destroy
    @journey = Journey.find(params[:id])
    @journey.destroy
    redirect_to "/journeys"
  end

end
