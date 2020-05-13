class SubscriptionMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscription_mailer.confirmation.subject
  #
  def confirmation(subscription)
    @subscription = subscription
    mail(
      to:       @subscription.email,
      subject:  "Participation à  #{@subscription.event.title} chez l'Atelier 28"
    )
  end
  def information(subscription)
    @subscription = subscription
    mail(
      to:       "emrose351@gmail.com",
      subject:  "Participation à  #{@subscription.event.title}"
    )
  end
end
