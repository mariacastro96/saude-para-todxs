class Contact < ApplicationRecord
  # Includes

  # Attributes

  # Associations

  # Delegates

  # Constants

  # Validations
  validates :name, :address, :email, :phone_number, presence: true

  # Scopes

  # Callbacks

  # Constants Methods

  # Default

  private
end
