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

  def art_table
    @products = Product.where(category: 'art de table')
  end

  def decoration
    @products = Product.where(category: 'décoration')
  end

  def luminaires
    @products = Product.where(category: 'luminaires')
  end

  def linge
    @products = Product.where(category: 'linge de maison')
  end

  def mobilier
    @products = Product.where(category: 'mobilier')
  end
end
