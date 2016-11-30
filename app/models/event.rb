class Event < ApplicationRecord
  belongs_to :category
  belongs_to :region
  belongs_to :topic
  
  validates :name, :start, :description, :region, 
    :city, :state, :topic, :category, presence: true
  
  has_permalink :name
  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
  
  def self.upcoming
    where('start > ?', Date.yesterday.to_datetime)
  end
  
  def self.past
    where('start < ?', Date.yesterday.to_datetime)
  end
  
  def full_street_address
    "#{city}, #{state}, USA"
  end
  
end
