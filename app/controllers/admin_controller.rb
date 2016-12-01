class AdminController < ApplicationController
  before_action :restrict_access
  layout 'admin'
  
  def index
    @events = Event.all
  end
end