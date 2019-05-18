class Course < ApplicationRecord
  
  # Relationships
  # Belongs to
  belongs_to :user

  # Linked to
  has_and_belongs_to_many :categories, dependent: :destroy
  has_and_belongs_to_many :locations, dependent: :destroy

  has_many :upvotes, dependent: :destroy
  has_many :downvotes, dependent: :destroy

  # REGEX
  VALID_COURSE_REGEX = /\A[\w\s\d]+\z/i

  # Validate relationships
  validates :categories,
  presence: true
  validates :locations,
  presence: true

  # Name Validate
  validates :name,
    presence: true,
    length: {
      minimum: 10,
      maximum: 50,
      too_short: 'is to short (minimum is %{count} characters)',
      too_long: 'is to long (maximum is %{count} characters)'
    },
    format: {
      with: VALID_COURSE_REGEX,
      message: 'is invalid, must only contain alpha-numeric characters.'
    },
    uniqueness: {
      case_sensitive: false
    }

  # Prerequisite Validate
  validates :prerequisite,
    presence: true,
    length: {
      minimum: 10,
      maximum: 50,
      too_short: 'is to short (minimum is %{count} characters)',
      too_long: 'is to long (maximum is %{count} characters)'
    },
    format: {
      with: VALID_COURSE_REGEX,
      message: 'is invalid, must only contain alpha-numeric characters.'
    },
    uniqueness: {
      case_sensitive: false
    }
  
  # Description Validate
  validates :description,
    presence: true,
    length: {
      minimum: 30,
      maximum: 1024,
      too_short: 'is to short (minimum is %{count} characters)',
      too_long: 'is to long (maximum is %{count} characters)'
    }
end
