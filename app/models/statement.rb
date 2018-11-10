class Statement < ApplicationRecord
  # Includes

  # Attributes

  # Associations
  belongs_to :language

  # Delegates

  # Constants

  # Validations
  validates :code, :title, :text, :language_id, presence: true
  
  # Scopes

  # Callbacks

  # Constants Methods

  # Default

  private
end
