class CartsController < ApplicationController
  def create
  end

  def show

 @hotels = Hotel.where(id: Cart.where(user_id: current_user.id ).map(&:hotel_id))

  end

  def destroy
    Cart.find(user_id: current_user.id , hotel_id: params[:id]).destroy

    redirect_to cart_path(cart)
  end


end
