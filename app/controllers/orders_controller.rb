class OrdersController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @order = Order.new
    @cart = @current_cart
  end

  def create
    @order = Order.new(order_params)
    @current_cart.line_items.each { |item| @order.line_items << item }
    # @order.amount = @current_cart.sub_total
    if @order.delivery
      @order.amount = @current_cart.sub_total + 5.to_money
    else
      @order.amount = @order.amount = @current_cart.sub_total
    end
    @order.user = current_user if current_user
    if @order.save
      save_user_address if params[:save_address].to_i == 1
      trigger_stripe
      cleanup_cart
      OrderMailer.confirmation(@order).deliver_now
      OrderMailer.information(@order).deliver_now
      redirect_to new_order_payment_path(@order)
    else
      @cart = @current_cart
      render :new
    end
  end

  def show
    # if current_user
    #   @order = current_user.orders.find(params[:id])
    # else
    @order = Order.find(params[:id])
    # end
  end

  def index
    @orders = current_user.orders
  end

  def without_login
    session[:without_login] = true
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to admin_path
    else render :edit
    end
  end

  private

  def order_params
    params.require(:order).permit(:fullname, :phone, :email, :address, :zip_code, :city, :status)
  end

  def trigger_stripe
    stripe_session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      customer_email: customer_email,
      line_items: stripe_line_items(@order.line_items),
      success_url: order_url(@order),
      cancel_url: order_url(@order)
    )
    @order.update(checkout_session_id: stripe_session.id)
  end

  def cleanup_cart
    @current_cart.line_items.each { |item| item.update(cart_id: nil) }
    Cart.destroy(session[:cart_id])
    session[:cart_id] = nil
  end

  def stripe_line_items(order_items)
    all_items = []
    order_items.each do |item|
      item_hash = {
        name: item.product.name,
        amount: item.product.price_cents,
        quantity: item.quantity,
        currency: 'eur'
      }
      all_items.push(item_hash)
    end
    return all_items
  end

  def customer_email
    current_user ? current_user.email : nil
  end

  def save_user_address
    if @order.user != nil
      current_user.attributes = @order.attributes.except("id", "email", "status", "note", "amount_cents", "amount_currency", "checkout_session_id", "user_id", "updated_at", "created_at")
      current_user.save
    end
  end
end
