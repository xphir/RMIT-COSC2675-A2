class Category < ApplicationRecord
  # Relationships
  has_and_belongs_to_many :courses

  # REGEX
  VALID_CATEGORY_REGEX = /\A[\w\d\s]+\z/

  # Name
  validates :name,
    presence: true,
    length: {
      minimum: 2,
      maximum: 50,
      too_short: 'Category is to short (minimum is %{count} characters)',
      too_long: 'Category is to long (maximum is %{count} characters)'
    },
    format: {
      with: VALID_CATEGORY_REGEX,
      message: 'Category is invalid syntax.'
    },
    uniqueness: {
      case_sensitive: false
  }
  
end