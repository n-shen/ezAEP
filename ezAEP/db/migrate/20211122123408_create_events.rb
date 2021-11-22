class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_host
      t.date :event_start_date
      t.date :event_end_date
      t.text :event_desc
      t.string :event_code

      t.timestamps
    end
  end
end
