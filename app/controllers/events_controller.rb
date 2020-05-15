class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @events = Event.order(created_at: :desc)
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      flash.notice = "Thank you! you add successfully a new event."
      redirect_to root_path
    else
      #flash.now[:error] = t('flash.work.error_html')
      render :new
    end
  end
  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to admin_path
    else render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    # no need for app/views/books/destroy.html.erb
    redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :cover, :upcoming)
  end
end

