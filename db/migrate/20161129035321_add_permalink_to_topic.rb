class AddPermalinkToTopic < ActiveRecord::Migration
  def self.up
    add_column :topics, :permalink, :string
    add_index :topics, :permalink
  end
  def self.down
    remove_column :topics, :permalink
  end
end