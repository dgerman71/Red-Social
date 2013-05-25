class Email < ActionMailer::Base
  default from: "Red Social - Mensaje"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.enviar.subject
  #
  def enviar(parametros)
   @asunto = parametros[:asunto]
   @mensaje = parametros[:mensaje]
   @destinatario = parametros[:destinatario]
   
   mail to: @destinatario,
        subject: "Red Social - #{@asunto}"
  end

  def solicitar_amistad(usuario,amigo)
    @usuario = usuario
    @amigo = amigo

    mail to: amigo.email,
         subject: "Solicitud de amistad de #{amigo.name.capitalize}"

  end
end


