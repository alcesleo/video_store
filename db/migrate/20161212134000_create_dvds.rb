class CreateDvds < ActiveRecord::Migration[5.0]
  def change
    create_table :dvds do |t|
      t.references :movie, null: false, foreign_key: true
      t.string :serial_number

      t.timestamps
    end
  end
end
