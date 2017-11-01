class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform that action."
    redirect_to(request.referrer || root_path)
  end

  def load_event
    Event.find(params[:event_id] || params[:id])
  end
end
