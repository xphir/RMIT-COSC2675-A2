class User < ApplicationRecord
  attr_accessor :remember_token
  # Association Macros

  # Name
  # Name is to short (minimum is 4 characters)
  validates :name, 
  presence: true, 
  length: { 
    minimum: 4,
    maximum: 50,
    too_short: 'Name is to short (minimum is %{count} characters)',
    too_long: 'Name is to Long (maximum is %{count} characters)'
  }
  
  # Email
  VALID_EMAIL_REGEX = /\A[\w]+\.[\w]+@rmit.edu.au\z/i
  validates :email, 
  presence: true,
  length: { 
    minimum: 4,
    maximum: 255,
    too_short: 'Email is to short (minimum is %{count} characters)',
    too_long: 'Email is to long (maximum is %{count} characters)'
  },
  format: { 
    with: VALID_EMAIL_REGEX,
    message: 'Email registration only open for RMIT staff (format <first name>.<last name>@rmit.edu.au).'
  },
  uniqueness: { case_sensitive: false }
  
  
  # Password
  VALID_PASSWORD_REGEX = /\A^(?=.*[A-Z])(?=.*[\d])(?=.*[a-z])(?=.*[\W])[\S]*/
  validates :password,
  presence: true, 
  length: { 
    minimum: 8,
    maximum: 50,
    too_short: 'Password is to short (minimum is %{count} characters)',
    too_long: 'Password is to long (maximum is %{count} characters)'
  },
  format: {
    with: VALID_PASSWORD_REGEX,
    message: 'Password must contain at least a lowercase letter, an uppercase, a digit, a special character'
  },
  allow_nil: true

  # Make emails all lowercase before adding to db
  before_save { self.email = email.downcase }

  has_secure_password

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  # Returns true if the given token matches the digest.
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end
end