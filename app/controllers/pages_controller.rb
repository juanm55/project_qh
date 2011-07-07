class PagesController < ApplicationController
  def home  
    
  end

  def contact
    @title="Contacto"
  end
  
  def about
    @title="Nosotros"
  end

end
