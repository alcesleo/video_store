# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

braveheart = Movie.create(title: "Braveheart", year: 1999)
toy_story  = Movie.create(title: "Toy Story XVI", year: 2020)

braveheart_dvd = Dvd.create(movie: braveheart, serial_number: "BH1999")
toy_story_dvd = Dvd.create(movie: toy_story, serial_number: "TS2020")

Rental.create(dvd: braveheart_dvd, rented_at: Date.today, due_at: Date.today + 7)
Rental.create(dvd: toy_story_dvd, rented_at: Date.today - 1, due_at: Date.today + 6)
