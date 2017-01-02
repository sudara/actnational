class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :admin?
  
  protected
  
  def set_all_events_for_map
    @all_events = Event.upcoming.where('latitude is not ?',nil)
  end
  

  def set_account
    @account = Account.find_by(url_name: request.subdomains.first)
  end

  def restrict_access
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      session[:admin] = (username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASS'])
    end
  end
  
  def admin?
    session[:admin] == true
  end
end
