class CopensController < ApplicationController


  def index
    @copens = Copen.all
    @title = "Categorias de Horario"
  end
  
  #############
  
#  def show                 #No es necesario dada la informacion que se puede visualizar en Index###
#    @copen = Copen.find(params[:id])
#    @title = "Categorias -> #{@copen.name}"
#  end
  
  #############
  
  def new
    @title = "Nueva Categoria de horario"
    @copen = Copen.new
  end
  
  #############
  
  def create
    @copen = Copen.new(params[:copen])
    if @copen.save
      flash[:notice] = 'Categoria de horario creada.'
      redirect_to copens_path
    else
      render :action => 'new'
    end
  end
  
  #############
  
  def edit
     @copen = Copen.find(params[:id])
  end
  
  #############
  
  def update
    @copen = Copen.find(params[:id])
    if @copen.update_attributes(params[:copen])
      flash[:notice] = "Categoria actualizada."
      redirect_to @copen
    else
      render :action => 'edit'
    end
    
  end
  
  #############
  
  def destroy
    @copen = Copen.find(params[:id])
    @copen.destroy
    flash[:notice] = "Categoria destruida."
    redirect_to copens_path
  end
  
end
