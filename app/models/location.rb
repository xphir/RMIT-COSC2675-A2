class Location < ApplicationRecord
  # Relationships
  has_and_belongs_to_many :courses

  # REGEX
  VALID_LOCATION_REGEX = /\A[\d]{2}\.[\d]{2}\.[\d]{2}\z/

  # Name
  validates :name,
    presence: true,
    length: {
      minimum: 8,
      maximum: 8,
      too_short: 'Location is to short (minimum is %{count} characters)',
      too_long: 'Location is to Long (maximum is %{count} characters)'
    },
    format: {
      with: VALID_LOCATION_REGEX,
      message: 'Location is invalid syntax, it must be in the format of RMIT location names (format 12.09.34).'
    },
    uniqueness: {
      case_sensitive: false
    }
end
