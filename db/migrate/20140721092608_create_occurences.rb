class CreateOccurences < ActiveRecord::Migration
  def change
    create_table :occurences do |t|
      t.date :date
      t.string :device_brand
      t.string :device_model
      t.string :operation_system_version
      t.string :app_version
      t.references :assertion, index: true
      t.references :excp, index: true

      t.timestamps
    end
  end
end
