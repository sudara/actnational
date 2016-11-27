class Event < ApplicationRecord
  belongs_to :category
  belongs_to :region
  belongs_to :topic
  
  validates :name, :start, :description, :region, :topic, :category, presence: true
  
  def self.upcoming
    where('start > ?', Date.yesterday)
  end
  
end
