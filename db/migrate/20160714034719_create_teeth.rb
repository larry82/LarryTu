class CreateTeeth < ActiveRecord::Migration
  def change
    create_table :teeth do |t|
      t.string :pic_name
      t.integer :times

      t.timestamps null: false
    end
  end
end
