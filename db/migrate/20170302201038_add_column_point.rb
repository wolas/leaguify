class AddColumnPoint < ActiveRecord::Migration[5.0]
  def change
  	add_column :teams, :points, :integer
  end
end
