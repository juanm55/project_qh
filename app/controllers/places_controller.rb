class PlacesController < ApplicationController
  
  def index
    @title = "Sitios"
    @places = Place.all
  end
  
###############  
  
  def show
    @place = Place.find(params[:id])
    @title = @place.name
    if user_signed_in?
      @newcomment = Comment.new(params[:newcomment])
      @newcomment.place_id = @place.id
      @newcomment.user_id = current_user.id 
    end
    
    @comment = @place.comments.paginate(:page => params[:page])
  end
  
  #############
  
  def new
    @title = "Nuevo Sitio"
    @place= Place.new
  end
  
###############
  
  def create
    @place = Place.new(params[:place])
    @place.user_id = current_user.id
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
    redirect_to cplaces_path
  end
  
###############
  
  
end
