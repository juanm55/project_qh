class PlacesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  def index
    @title = "Sitios"
    
    case params[:category]
    
    when 'rumba'
      @places = Place.find_all_by_cplace_id(1)
      
    when 'cultural'
      @places = Place.find_all_by_cplace_id(2)
      
    when 'gastronomia'
      @places = Place.find_all_by_cplace_id(3)
      
    when 'turistico'
      @places = Place.find_all_by_cplace_id(4)
      
    else 
      @places = Place.all
    end
    
  end
  
###############  
  
  def show
    @place = Place.find(params[:id])
    @title = @place.name
  end
    
  #############
  
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
