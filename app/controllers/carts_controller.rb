class CartsController < ApplicationController
  skip_before_action :authenticate_user!

    def show
      @cart = @current_cart
      @line_items = @cart.line_items.order(:created_at)
    end

    def edit
      @cart = Cart.find(params[:id])
    end

    def update
      @cart = Cart.find(params[:id])
      if @cart.update(cart_params)
        redirect_to new_order_path
      else render :edit
      end
    end

    def destroy
      @cart = @current_cart
      @cart.destroy
      session[:cart_id] = nil
      redirect_to root_path
    end

    private

    def cart_params
      params.require(:cart).permit(:delivery)
    end
end
