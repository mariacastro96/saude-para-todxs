class Study < ApplicationRecord
  # Includes

  # Attributes

  # Associations
  belongs_to :language
  has_many :fields

  # Delegates

  # Constants

  # Validations
  validates :code, :title, :description, presence: true
  # Scopes

  # Callbacks

  # Constants Methods

  # Default

  private
end
