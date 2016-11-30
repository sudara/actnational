class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  protected
  
  def set_all_events_for_map
    @all_events = Event.upcoming
  end
end
