module HotelsHelper
  def current_user
    @current_hotel ||= Hotel.find_by(id: session[:hotel_id])
  end
end
