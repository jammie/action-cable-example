class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.integer :user_id
      t.string :name
      t.text :data

      t.timestamps
    end
  end
end
