class CreateAssertions < ActiveRecord::Migration
  def change
    create_table :assertions do |t|
      t.text :description
      t.text :notes
      t.references :user, index: true

      t.timestamps
    end
  end
end
