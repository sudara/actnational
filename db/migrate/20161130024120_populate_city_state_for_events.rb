class PopulateCityStateForEvents < ActiveRecord::Migration[5.0]
  def change
    Region.find(1).events.each do |event| 
      event.city = ['Los Angeles','San Francisco'].sample
      event.state="California" 
      event.save
    end
    
    Region.find(2).events.each do |event|
      event.city = 'Seattle'
      event.state = 'Washington'
      event.save
    end
    
    Region.find(9).events.each do |event|
      event.city = 'New York'
      event.state = 'New York'
      event.save
    end
  end
end
