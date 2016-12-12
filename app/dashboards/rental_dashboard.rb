require "administrate/base_dashboard"

class RentalDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    dvd: Field::BelongsTo,
    id: Field::Number,
    rented_at: Field::DateTime,
    due_at: Field::DateTime,
    returned_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :dvd,
    :id,
    :rented_at,
    :due_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :dvd,
    :id,
    :rented_at,
    :due_at,
    :returned_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :dvd,
    :rented_at,
    :due_at,
    :returned_at,
  ].freeze

  # Overwrite this method to customize how rentals are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(rental)
  #   "Rental ##{rental.id}"
  # end
end
