class EntriesController < ApplicationController

  def new

  end

  def create
    @entry = Entry.new(
      text: params[:text],
      public: params[:public],
      day_id: params[:day_id]
      )
    if @entry.save
      redirect_to request.referer
    end
  end

  def edit
    @entry = Entry.find(params[:id])
    @day = Day.find(@entry.day_id)
    @journey = Journey.find(@day.journey_id)
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update(
      text: params[:text],
      public: params[:public]
      )
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    @day = Day.find(@entry.day_id)
    redirect_to "/days/#{@day.id}"
  end

end
