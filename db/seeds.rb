# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["Animal Liberation",
"Anti-War",
"Arts and Action",
"Drug War/Criminal Justice System",
"Education and Student Activism",
"Environment",
"Global Justice and Anti-Capitalism",
"Government and Elections",
"Health, Housing and Public Services",
"Immigrant Rights",
"Independant Media",
"LGBTI / Queer",
"Native/Indigenous Rights",
"Police State",
"Racial Justice",
"Womyn",
"Afghanistan",
"Americas",
"Haiti",
"Iraq",
"Palenstine",
"Syria"].each do |topic|
  Topic.create(name: topic)
end

["Class/Workshop",
"Concert/Show",
"Conference",
"Court Date",
"Critical Mass",
"Fundraiser",
"Other",
"Panel Discussion",
"Party/Street Party",
"Press Conference",
"Protest/March/Rally",
"Radio Broadcast",
"Screening",
"Speaker",
"Teach-in",
"Vigil/Ritual"].each do |category| 
  Category.create(name: category)
end

["California",
"Pacific Northwest",
"Mountain",
"Southwest",
"Midwest",
"South",
"Greatlakes",
"D.C.",
"NYC"].each do |region|
  Region.create(name: region)
end

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
    description: "Show that you care about #{topic.name} by participating in our #{category.name} event in #{region.name}",
    category: category,
    topic: topic,
    region: region,
    start: Time.now - 1.month + (rand.round * 3.month) + id.days,
    organizer: "Motivated Organizer ##{id}",
    website: "http://#{topic.name}",
    address: "123 Main St.",
    city: "Anytown",
    state: "California",
    location_details: "We will start blocks away from main st."
  )
  event.save!
end