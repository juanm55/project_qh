class CmoneysController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @cmoneys = Cmoney.all
    @title = "Categorías de Dinero"
  end
  
  #############
  
  # def show          Deprecated since it is no use to the bussines model
  #   @cmoney = Cmoney.find(params[:id])
  #   @title = "Categorias -> #{@cmoney.name}"
  # end
  
  #############
  
  def new
    @cmoney = Cmoney.new
  end
  
  #############
  
  def create
    @cmoney = Cmoney.new(params[:cmoney])
    if @cmoney.save
      flash[:notice] = "Categoria de dinero creada."
      redirect_to cmoneys_path
    else
      render :action => 'new'
    end
  end
  
  #############
  
  def edit
     @cmoney = Cmoney.find(params[:id])
  end
  
  #############
  
  def update
    @cmoney = Cmoney.find(params[:id])
    if @cmoney.update_attributes(params[:cmoney])
      flash[:notice] = "Categoria actualizada."
      redirect_to cmoneys_path
    else
      render :action => 'edit'
    end
    
  end
  
  #############
  
  def destroy
    @cmoney = Cmoney.find(params[:id])
    @cmoney.destroy
    flash[:notice] = "Categoria destruida."
    redirect_to cmoneys_path
  end
  
  #############
end