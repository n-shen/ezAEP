class CreatePgrades < ActiveRecord::Migration[6.0]
  def change
    create_table :pgrades do |t|
      t.references :user, null: false, foreign_key: true
      t.references :prest, null: false, foreign_key: true
      t.integer :pd_socre
      t.text :pd_review

      t.timestamps
    end
  end
end
