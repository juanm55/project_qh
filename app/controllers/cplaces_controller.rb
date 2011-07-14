class CplacesController < ApplicationController
  
  def index
    @cplaces = Cplace.all
    @title = "Categorias de Sitios"
  end
  
  #############
  
  def show
    @cplace = Cplace.find(params[:id])
    @title = "Categorias -> #{@cplace.name}"
  end
  
  #############
  
  def new
    @title = "Nueva Categoria de Sitios"
    @cplace = Cplace.new
  end
  
  #############
  
  def create
    @cplace = Cplace.new(params[:cplace])
    if @cplace.save
      flash[:notice] = 'Categoria de sitio creada.'
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
      flash[:notice] = "Categoria actualizada."
      redirect_to @cplace
    else
      render :action => 'edit'
    end
    
  end
  
  #############
  
  def destroy
    @cplace = Cplace.find(params[:id])
    @cplace.destroy
    flash[:notice] = "Categoria destruida."
    redirect_to cplaces_path
  end
  
  #############
end
