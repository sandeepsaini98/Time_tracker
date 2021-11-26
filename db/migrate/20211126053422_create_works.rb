class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.date :r_date
      t.integer :r_time ,null:false

      t.timestamps
    end
  end
end
