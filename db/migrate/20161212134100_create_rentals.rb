class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
      t.datetime :rented_at, null: false
      t.datetime :due_at, null: false
      t.datetime :returned_at

      t.references :dvd, null: false, foreign_key: true
    end
  end
end
