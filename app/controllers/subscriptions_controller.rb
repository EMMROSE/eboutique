class SubscriptionsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @subscription = Subscription.new
    @event = Event.find(params[:event_id])
  end

  def create
    # @event = Event.find(params[:event_id])
    @subscription = Subscription.new(subscription_params)
    # @subscription.event = @event
    if @subscription.save
      # subscriptionMailer.general_message(@subscription).deliver_now
      redirect_to event_path
      flash[:notice] = "Votre inscription a bien été enregistrée."
    else
      render :new
      flash[:alert] = "Veuillez compléter le formulaire s'il vous plaît."
    end
  end

  private

  def subscription_params
    params.require(:subscription).permit(:firstname, :lastname, :email, :phone, :event_id)
  end
end
