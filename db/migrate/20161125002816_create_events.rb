class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.references :category, foreign_key: true
      t.references :region, foreign_key: true
      t.references :topic, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.string :organizer
      t.string :contact_email
      t.string :contact_phone
      t.string :website
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.text :location_details

      t.timestamps
    end
  end
end
