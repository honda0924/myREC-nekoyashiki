class CreateBps < ActiveRecord::Migration[6.0]
  def change
    create_table :bps do |t|
      t.date :measure_date,null: false
      t.integer :term,null: false
      t.time :measure_time,null: false
      t.integer :top_bp,null: false
      t.integer :bottom_bp,null: false
      t.integer :pulse,null: false
      t.boolean :med_chk
      t.float :weight
      t.references :user,foreign_key: true

      t.timestamps
    end
  end
end
