class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.form_contact.subject
  #
  def form_contact(contacto)
    @greeting = "Hola"
    @contact = contacto
    @date = Time.now.strftime("%d-%m-%Y - %H:%M")
    mail(to: "hola@autotransportesbalderas.com", subject: "Contato de web")
  end
end
