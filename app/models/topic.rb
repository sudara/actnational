class Topic < ApplicationRecord
  has_many :events
  has_permalink :name
end
