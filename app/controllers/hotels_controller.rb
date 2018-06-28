class HotelsController < ApplicationController
  before_action :logged_in_user, only: [:add_to_cart,:index,:show]
  def index
    @hotels = Hotel.paginate(page: params[:page])
  end

  def show
    @hotel=Hotel.find(params[:id])
    view=HotelView.new(user_id: current_user.id , hotel_id: @hotel.id)
    view.save
    @count=HotelView.where(hotel_id: @hotel.id).count
  end

  def add_to_cart
    @hotel=Hotel.find(params[:hotel_id])
    cart=Cart.new(user_id: current_user.id , hotel_id: params[:hotel_id])
    cart.save
    redirect_to cart_path(cart)
  end

end
