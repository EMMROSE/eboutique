class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @contact = Contact.new()
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.information(@contact).deliver_now
      redirect_to root_path
      flash[:notice] = "Votre demande a bien été transmise."
    else
      render :new
      flash[:alert] = "Veuillez compléter le formulaire s'il vous plaît."
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end
end
