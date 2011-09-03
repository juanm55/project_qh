class PlacesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  def index
    @title = "Sitios"
    if params[:category]
      @places = Place.where("cplace_id = ?", params[:category])
    else
      @places = Place.all
    end    
  end
  
###############  
  
  def show
    @place = Place.find(params[:id])
    @title = @place.name
  end
    
###############
  
  def new
    @title = "Nuevo Sitio"
    @place= Place.new
  end
  
###############
  
  def create
    @place = Place.new(params[:place])
    #@place.user_id = current_user.id
    if @place.save
      flash[:notice] = "Sitio creado."
      redirect_to places_path
    else
      render :action => 'new'
    end
  end
  
###############

  def edit
    @place = Place.find(params[:id])
  end
  
  #############
  
  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    flash[:notice] = "Sitio Destruido."
    redirect_to places_path
  end
  
###############
  
  
end
