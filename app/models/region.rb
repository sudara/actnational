class Region < ApplicationRecord
  has_many :events
  has_many :future_events, -> { merge(Event.upcoming) },
    class_name: "Event"
  
end
