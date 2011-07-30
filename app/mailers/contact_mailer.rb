# coding: utf-8
class ContactMailer < ActionMailer::Base

  attr_accessor :name, :email, :message

  default to: "nome@dominio.com",
          from: "contato@dominio.com"

  headers = {'Return-Path' => 'contato@dominio.com'}

  def send_email(user_info)
    @user_info = user_info

    mail(
      to: "nome@dominio.com",
      subject: "Formulário de Contato da Minha Aplicação",
      from: "Aplicação <contato@dominio.com>",
      return_path: "contato@dominio.com",
      date: Time.now,
      content_type: "text/html"
    )
  end
end

