class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :restrict_access 
  
  protected
  
  def set_all_events_for_map
    @all_events = Event.upcoming
  end
  

  def set_account
    @account = Account.find_by(url_name: request.subdomains.first)
  end

  def restrict_access
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASS']
    end
  end
end
