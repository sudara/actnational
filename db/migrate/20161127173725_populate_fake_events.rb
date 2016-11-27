class PopulateFakeEvents < ActiveRecord::Migration[5.0]
  def change
    regions = Region.all
    categories = Category.all
    topics = Topic.all

    # make 30 events in the past and present with all region/categories
    30.times do |id|
      region = regions[(regions.count * rand).round - 1]
      category = categories[(categories.count * rand).round - 1]
      topic = topics[(topics.count * rand).round - 1]
      event = Event.new(
        name: "#{topic.name} #{category.name} event",
        description: "Show that you care about #{topic.name} by participating our #{category.name} event in #{region.name}",
        category: category,
        topic: topic,
        region: region,
        start: Time.now - 1.month + (rand.round * 3.month) + id.days,
        organizer: "Motivated Organizer ##{id}",
        website: "http://#{topic.name}",
        address: "123 America St.",
        city: "Anytown",
        state: "California",
        location_details: "We will start blocks away from main st."
      )
      event.save!
    end
  end
end
