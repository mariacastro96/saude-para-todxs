class Question < ApplicationRecord
  # Includes

  # Attributes

  # Associations
  belongs_to :language

  # Delegates

  # Constants

  # Validations
  validates :code, :question, :answer, :language, presence: true
  # Scopes

  # Callbacks

  # Constants Methods

  # Default

  private
end
