class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: :admin

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
    @products = Product.where(category: 'art_de_la_table')
  end

  def decoration
    @products = Product.where(category: 'décoration')
  end

  def luminaires
    @products = Product.where(category: 'luminaires')
  end

  def linge
    @products = Product.where(category: 'linge_de_maison')
  end

  def mobilier
    @products = Product.where(category: 'mobilier')
  end

  def admin
    @order = Order.all
  end
end
