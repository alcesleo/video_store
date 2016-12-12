class CreateDvds < ActiveRecord::Migration[5.0]
  def change
    create_table :dvds do |t|
      t.string :title, null: false
      t.integer :year, null: false

      t.timestamps
    end
  end
end
