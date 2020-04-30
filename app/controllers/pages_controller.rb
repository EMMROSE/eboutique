class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :studio, :univers]

  def home
  end

  def studio
  end

  def univers
  end
end
