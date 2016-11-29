class ResaveAllModelsForPermalinks < ActiveRecord::Migration[5.0]
  def change
    Region.all.each(&:save)
    Topic.all.each(&:save)
    Category.all.each(&:save)
    Event.all.each(&:save)
  end
end
