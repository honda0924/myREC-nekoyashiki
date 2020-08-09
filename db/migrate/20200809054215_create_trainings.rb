class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|

      t.date :training_date,null: false
      t.integer :top_bp
      t.integer :bottom_bp
      t.integer :pulse
      t.integer :condition
      t.integer :sleeping
      t.integer :eat
      t.float :weight
      t.boolean :med_chk
      t.integer :breath_index,null: false
      t.integer :leg_index,null: false
      t.integer :training_time,null: false
      t.references :user,foreign_key: true
      t.timestamps
    end
  end
end
