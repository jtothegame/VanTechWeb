require "administrate/base_dashboard"

class TagDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
<<<<<<< HEAD
=======
    organizations: Field::HasMany,
    taggings: Field::HasMany,
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
    id: Field::Number,
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
<<<<<<< HEAD
    :id,
    :name,
    :created_at,
    :updated_at,
=======
    :organizations,
    :taggings,
    :id,
    :name,
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
<<<<<<< HEAD
=======
    :organizations,
    :taggings,
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
    :id,
    :name,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
<<<<<<< HEAD
=======
    :organizations,
    :taggings,
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
    :name,
  ].freeze

  # Overwrite this method to customize how tags are displayed
  # across all pages of the admin dashboard.
  #
<<<<<<< HEAD
  # def display_resource(tag)
  #   "Tag ##{tag.id}"
  # end
=======
  def display_resource(tag)
    tag.name
  end
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
end
