class Address < ApplicationRecord
  # Validations
  validates :fname, :lname, :address1, :city, :state, :country, :zip_code, presence: true
  validates :phone, format: { with: /\A\d{10}\z/, message: "must be a 10-digit number" }, allow_blank: true

  # Polymorphic association
  belongs_to :addressable, polymorphic: true
end
