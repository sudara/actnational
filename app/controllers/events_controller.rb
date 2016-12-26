class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :restrict_access, only: :destroy 
  before_action :restrict_access_unless_creator, only: [:update, :edit]
  
  # GET /events
  # GET /events.json
  def index
    @regions = Region.all.for_event_list
    set_all_events_for_map
  end

  # GET /events/1
  # GET /events/1.json
  def show
    set_all_events_for_map
    @regions = Region.all.for_event_list
    @region = @event.region
  end

  # GET /events/new
  def new
    set_all_events_for_map
    @regions = Region.all
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if verify_recaptcha(model: @event) && @event.save
        format.html { redirect_to @event, notice: "Event was successfully created. Feel free to <a href='/events/#{@event.permalink}/edit'>edit it</a>.".html_safe }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to '/admin', notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find_by_permalink(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :description, :category_id, 
        :region_id, :topic_id, :start, :end, :organizer, :contact_email, 
        :contact_phone, :website, :address, :city, :state, 
        :zip, :location_details).merge(created_by_ip: request.remote_ip, created_by_session_id: session.id)
    end
    
    def restrict_access_unless_creator
      restrict_access unless @event.created_by_session_id == session.id
    end
end
