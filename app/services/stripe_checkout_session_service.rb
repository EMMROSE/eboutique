class StripeCheckoutSessionService
  def call(event)
    order = Order.find_by(checkout_session_id: event.data.object.id)
    order.update(state: 'paid')
    # Send an email to confirmate
    OrderMailer.confirmation(@order).deliver_now
  end
end
