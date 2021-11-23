class AddEventVisibleToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :event_visible, :boolean, null: false, default: false
  end
end
