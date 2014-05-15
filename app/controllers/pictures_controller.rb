class PicturesController < ApplicationController

  def show
    @picture_details = Picture.find_by({ :id => params[:id] })
  end

  def index
    @list_of_pictures = Picture.all
  end

  def new

  end

  def create
    p = Picture.new
    p.source = params[:source]
    p.caption = params[:caption]
    p.save
    redirect_to("http://localhost:3000/all_pictures")
  end

end
