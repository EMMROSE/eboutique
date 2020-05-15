class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.information.subject
  #
  def information(contact)
    @contact = contact
    mail(
      to:       "boutique@samedi28.com",
      subject:  "Demande de conseil"
    )
  end
end
