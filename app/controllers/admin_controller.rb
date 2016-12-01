class AdminController < ApplicationController
  before_action :restrict_access
  layout 'admin'
  
  def index
    if params[:past]
      @events = Event.past
    else
      @events = Event.upcoming
    end
  end
end