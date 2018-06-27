class HotelsController < ApplicationController
  before_action :logged_in_user, only: [:index,:show]
  def index
    @hotels = Hotel.paginate(page: params[:page])
  end

  def show
    @hotel=Hotel.find(params[:id])
  end

  private
  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
