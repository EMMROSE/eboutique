class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.confirmation.subject
  #
  def confirmation(order)
    @order = order
    mail(
      to:       @order.email,
      subject:  "Votre commande - Samedi 28"
    )
  end
  def information(order)
    @order = order
    mail(
      to:       "boutique@samedi28.com",
      subject:  "Nouvelle commande en ligne"
    )
  end
end
