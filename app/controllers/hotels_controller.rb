class HotelsController < ApplicationController
  before_action :logged_in_user, only: [:add_to_cart,:index,:show]
  def index
    @hotels = Hotel.paginate(page: params[:page])
  end

  def show
    @hotel=Hotel.find(params[:id])
    view=HotelView.new(user_id: current_user.id , hotel_id: @hotel.id, rating: @hotel.rating )
    view.save
    @count=HotelView.where(hotel_id: @hotel.id).count
  end

  def add_to_cart
    @hotel=Hotel.find_by(id: params[:hotel_id])
    @check = Cart.find_by(hotel_id: params[:hotel_id] ,user_id: current_user.id )
    if @check.nil?
        cart=Cart.new(user_id: current_user.id , hotel_id: params[:hotel_id] ,is_current: true)
        cart.save
    end
    redirect_to cart_path(current_user)
  end

end
