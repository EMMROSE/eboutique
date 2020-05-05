class SubscriptionsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @subscription = Subscription.new()
    @subscription.event = Event.find(params[:event_id])
  end

  def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
      subscriptionMailer.general_message(@subscription).deliver_now
      redirect_to atelier_path
      flash[:notice] = "Votre demande a bien été transmise"
    else
      render :new
      flash[:alert] = "Veuillez compléter le formulaire s'il vous plaît."
    end
  end

  private

  def subscription_params
    params.require(:subscription).permit(:firstname, :lastname, :email, :phone)
  end
end
