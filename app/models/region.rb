class Region < ApplicationRecord
  has_many :events
  has_many :future_events, -> { merge(Event.upcoming) },
    class_name: "Event"
  
  has_permalink :name
  
  def self.for_event_list
    preload(future_events: [:topic, :category])
  end
end
