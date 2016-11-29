class AddPermalinkToRegion < ActiveRecord::Migration
  def self.up
    add_column :regions, :permalink, :string
    add_index :regions, :permalink
  end
  def self.down
    remove_column :regions, :permalink
  end
end