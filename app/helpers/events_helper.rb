module EventsHelper
  
  def locations_from(events)
    locations = events.collect do |e|
      '{lat:' + e.latitude.to_s + ', lng:' + e.longitude.to_s + '},' if e.latitude
    end.compact
  end
end
