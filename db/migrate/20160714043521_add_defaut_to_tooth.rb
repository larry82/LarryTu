class AddDefautToTooth < ActiveRecord::Migration
  def change
  	change_column :teeth, :times, :integer, default:0
  end
end
