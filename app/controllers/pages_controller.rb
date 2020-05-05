class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :conseil, :univers, :event]

  def home
  end

  def boutique
  end

  def conseil
  end

  def univers
  end

  def event
    @events = Event.order(created_at: :desc)
  end
end
