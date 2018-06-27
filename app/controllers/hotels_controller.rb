class HotelsController < ApplicationController
  before_action :logged_in_user, only: [:index,:show]
  def index
    @hotels = Hotel.paginate(page: params[:page])
  end

  def show
    @hotel=Hotel.find(params[:id])
    view=HotelView.new(user_id: current_user.id , hotel_id: @hotel.id)
    view.save
    @count=HotelView.where(hotel_id: @hotel.id).count
  end






end
