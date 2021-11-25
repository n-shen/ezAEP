class CreatePrests < ActiveRecord::Migration[6.0]
  def change
    create_table :prests do |t|
      t.string :prest_name
      t.date :prest_evdue
      t.text :prest_desc
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
