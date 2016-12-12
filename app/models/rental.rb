class Rental < ApplicationRecord
  belongs_to :dvd

  def returned?
    !!returned_at
  end

  def return!
    self.returned_at = Date.today
    save
  end
end
