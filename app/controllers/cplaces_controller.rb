# encoding: utf-8
class CplacesController < ApplicationController
  before_filter :authenticate_user!
  
  authorize_resource
  skip_authorize_resource :only => [:index, :show]
  
  def index
    @cplaces = Cplace.all
    @title = "Categorías de Sitios"
  end
  
  #############
  
  def show
    @cplace = Cplace.find(params[:id])
    @title = "Categorías -> #{@cplace.name}"
  end
  
  #############
  
  def new
    @title = "Nueva Categoría de Sitios"
    @cplace = Cplace.new
  end
  
  #############
  
  def create
    @cplace = Cplace.new(params[:cplace])
    if @cplace.save
      flash[:notice] = 'Categoría de sitio creada.'
      redirect_to cplaces_path
    else
      render :action => 'new'
    end
  end
  
  #############
  
  def edit
    @cplace = Cplace.find(params[:id])
  end
  
  #############
  
  def update
    @cplace = Cplace.find(params[:id])
    if @cplace.update_attributes(params[:cplace])
      flash[:notice] = "Categoría actualizada."
      redirect_to @cplace
    else
      render :action => 'edit'
    end
    
  end
  
  #############
  
  def destroy
    @cplace = Cplace.find(params[:id])
    @cplace.destroy
    flash[:notice] = "Categoría destruida."
    redirect_to cplaces_path
  end
  
  #############
end
