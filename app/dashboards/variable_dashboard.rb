require "administrate/base_dashboard"

class VariableDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    field: Field::BelongsTo,
    language: Field::BelongsTo,
    id: Field::Number,
    code: Field::String,
    name: Field::String,
    value: Field::Number.with_options(decimals: 2),
    percentage: Field::Number.with_options(decimals: 2),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :field,
    :language,
    :id,
    :code,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :field,
    :language,
    :id,
    :code,
    :name,
    :value,
    :percentage,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :field,
    :language,
    :code,
    :name,
    :value,
    :percentage,
  ].freeze

  # Overwrite this method to customize how variables are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(variable)
  #   "Variable ##{variable.id}"
  # end
end
