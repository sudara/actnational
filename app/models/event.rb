class Event < ApplicationRecord
  belongs_to :category
  belongs_to :region
  belongs_to :topic
  
  validates :name, :start, :description, :region, :topic, :category, presence: true
  
  has_permalink :name
  
  def self.upcoming
    where('start > ?', Date.yesterday.to_datetime)
  end
  
  def self.past
    where('start < ?', Date.yesterday.to_datetime)
  end
  
end
