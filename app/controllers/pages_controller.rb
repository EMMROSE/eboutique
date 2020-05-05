class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :studio, :univers, :atelier]

  def home
  end

  def studio
  end

  def univers
  end

  def atelier
    @events = Event.order(created_at: :desc)
  end
end
