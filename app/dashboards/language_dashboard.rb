require "administrate/base_dashboard"

class LanguageDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    questions: Field::HasMany,
    statements: Field::HasMany,
    studies: Field::HasMany,
    variables: Field::HasMany,
    id: Field::Number,
    code: Field::String,
    name: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :code,
    :name,
    :questions,
    :statements,
    :studies,
    :variables,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :code,
    :name,
    :questions,
    :statements,
    :studies,
    :variables,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :code,
    :name,
  ].freeze

  # Overwrite this method to customize how languages are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(language)
  #   "Language ##{language.id}"
  # end
end
