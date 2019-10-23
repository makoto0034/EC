class CartItemsController < ApplicationController
  def new
  end

  def create
    @cart = Cart.find(current_user.id)
    @cart_item = CartItem.new(quantity:params[:product_count],product_id:params[:id],cart_id:@cart.id)
    @cart_item.save!
    redirect_to(carts_path)
  end
end
