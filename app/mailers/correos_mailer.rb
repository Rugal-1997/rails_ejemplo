class CorreosMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.correos_mailer.notificacion.subject
  #
  def notificacion(tarea)
    @tarea = tarea

    mail to: "nicolasgomez.andap@gmail.com", subject: "Tarea Nueva"
  end
end
