class AddSessionIdandIpToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :created_by_session_id, :string
    add_column :events, :created_by_ip, :string
  end
end
