class CreateExcps < ActiveRecord::Migration
  def change
    create_table :excps do |t|
      t.boolean :fixed
      t.date :date_fixed
      t.string :excp_thread
      t.text :excp_trace
      t.text :notes
      t.references :user, index: true

      t.timestamps
    end
  end
end
