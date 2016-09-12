class ShowsController < ApplicationController

  respond_to :json

  def index
    shows = Show.all
    render :json => shows
  end

  def create
    show = Show.create(show_params)
    render :json => show
  end

  private 
  def show_params
    params.require(:show).permit([:title, :series, :description, :image, :programmeID])
  end

end