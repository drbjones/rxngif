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

  def destroy
    p = Picture.find_by ({ :id => params[:id] })
    p.destroy
    redirect_to("http://localhost:3000/all_pictures")
  end

  def edit
    @picture = Picture.find_by ({ :id => params[:id] })
  end

  def update
    p = Picture.find_by ({ :id => params[:id] })
    p.caption = params[:caption]
    p.source = params[:source]
    p.save
    redirect_to("http://localhost:3000/picture_details/#{p.id}")
  end
end
