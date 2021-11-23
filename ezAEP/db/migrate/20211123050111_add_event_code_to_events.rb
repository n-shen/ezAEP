class AddEventCodeToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :event_code, :string, unique: true, null: false
  end
end
