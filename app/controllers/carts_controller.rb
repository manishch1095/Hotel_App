class CartsController < ApplicationController
  def create
  end

  def show
    # @cart = Cart.find_by(user_id: current_user.id)
    # @hotel = Hotel.where(id: @cart.hotel_id)
  # @hotels=  Hotel.joins("INNER JOIN carts ON hotels.id = carts.hotel_id")
  @hotels = Hotel.where(id: Cart.where(user_id: current_user.id ).map(&:hotel_id))

  end

  def destroy
    Cart.find(user_id: current_user.id , hotel_id: params[:id]).destroy

    redirect_to cart_path(cart)
  end
end
