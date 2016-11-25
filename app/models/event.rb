class Event < ApplicationRecord
  belongs_to :category
  belongs_to :region
  belongs_to :topic
end
