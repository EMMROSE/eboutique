class EventSubscriptionsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @subscription = EventSubscription.new
    @event = Event.find(params[:event_id])
  end

  def create
    @subscription = EventSubscription.new(event_subscription_params)
    if @subscription.save
      SubscriptionMailer.confirmation(@subscription).deliver_now
      redirect_to event_path
      flash[:notice] = "Votre inscription a bien été enregistrée."
    else
      render :new
      flash[:alert] = "Veuillez compléter le formulaire s'il vous plaît."
    end
  end

  private

  def event_subscription_params
    params.require(:event_subscription).permit(:firstname, :lastname, :email, :phone, :event_id)
  end
end
