class Field < ApplicationRecord
    # Includes

  # Attributes

  # Associations
  belongs_to :study
  belongs_to :language
  has_many :variables
  # Delegates

  # Constants

  # Validations
  validates :code, :title, :description, :total_value, :study_id, :language_id, presence: true
  # Scopes

  # Callbacks

  # Constants Methods

  # Default

  private
end
