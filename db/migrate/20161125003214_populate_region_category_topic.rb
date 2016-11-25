class PopulateRegionCategoryTopic < ActiveRecord::Migration[5.0]
  def change
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
    "Womeyn",
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
  end
end
