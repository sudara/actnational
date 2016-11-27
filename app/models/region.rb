class Region < ApplicationRecord
  has_many :events
  
  
  def self.with_upcoming_events
    joins(:events).preload(:events).merge(Event.upcoming)
  end
end
