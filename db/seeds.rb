# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

braveheart = Dvd.create(title: "Braveheart", year: 1999)
toy_story  = Dvd.create(title: "Toy Story XVI", year: 2020)

Rental.create(dvd: braveheart, rented_at: Date.today, due_at: Date.today + 7)
Rental.create(dvd: toy_story, rented_at: Date.today - 1, due_at: Date.today + 6)
