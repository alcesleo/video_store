require "test_helper"

describe Rental do
  let(:movie) { Movie.create(title: "Braveheart", year: 1999) }
  let(:dvd)   { Dvd.create(movie: movie, serial_number: "ASDF1234") }
  subject     { Rental.create(dvd: dvd, rented_at: Date.today, due_at: Date.today + 4) }

  it "reports whether it is returned" do
    subject.returned?.must_equal false
  end

  it "can be returned" do
    subject.return!
    subject.returned?.must_equal true
  end
end
