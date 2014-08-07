class Addcolumntoexcps < ActiveRecord::Migration
  def change
  	add_column :occurences, :conversation, :integer
  end
end
