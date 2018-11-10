class Language < ApplicationRecord
  # Includes

  # Attributes

  # Associations
  has_many :questions, dependent: :destroy
  has_many :statements, dependent: :destroy
  has_many :studies, dependent: :destroy
  has_many :variables, dependent: :destroy

  # Delegates

  # Constants

  # Validations

  # Scopes

  # Callbacks

  # Constants Methods

  # Default

  private
end
