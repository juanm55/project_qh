# coding: utf-8
class ContactMailer < ActionMailer::Base

  attr_accessor :name, :email, :message

  default to: :email,
          from: "contato@dominio.com"

  headers = {'Return-Path' => 'contacto@quehago.co'}

  def send_email(user_info)
    @user_info = user_info

    mail(
      to: "contacto@quehago.co",
      subject: "Formulário de Contato da Minha Aplicação",
      from: "Aplicação <ccontacto@quehago.co>",
      return_path: "contacto@quehago.co",
      date: Time.now,
      content_type: "text/html"
    )
  end
end