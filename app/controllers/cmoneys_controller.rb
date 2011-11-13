# encoding: utf-8
  class CmoneysController < ApplicationController
  before_filter :authenticate_user!

  authorize_resource
  skip_authorize_resource :only => :index

  def index
    @cmoneys = Cmoney.order("name")
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
      flash[:notice] = "Categoría de dinero creada."
      redirect_to cmoneys_path
    else
      render :action => 'new'
    end
  end

  #############

  def edit
     @cmoney = Cmoney.where("id = ?", params[:id]).first
  end

  #############

  def update
    @cmoney = Cmoney.where("id = ?", params[:id]).first
    if @cmoney.update_attributes(params[:cmoney])
      flash[:notice] = "Categoría actualizada."
      redirect_to cmoneys_path
    else
      render :action => 'edit'
    end
    
  end

  #############

  def destroy
    @cmoney = Cmoney.find(params[:id])
    @cmoney.destroy
    flash[:notice] = "Categoría destruida."
    redirect_to cmoneys_path
  end

  #############
end
