class PagesController < ApplicationController

def home  
  
end

#############

def contact
  @title="Contacto"
end

#############

def about
  @title="Nosotros"
end

#############

def dispatch_email
  user_info = params[:user_info]
  if ContactMailer.send_email(user_info).deliver
    flash[:notice] = "Mensagem enviada."
  else
    flash[:notice] = "Oops. algun problema."
  end
  redirect_to contact_url
end



end
