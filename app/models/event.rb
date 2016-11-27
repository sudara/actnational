class Event < ApplicationRecord
  belongs_to :category
  belongs_to :region
  belongs_to :topic
  
  validates :name, :start, :description, :region, :topic, :category, presence: true
  
end
