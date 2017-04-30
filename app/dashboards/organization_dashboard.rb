require "administrate/base_dashboard"

class OrganizationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
<<<<<<< HEAD
=======
    manager: Field::HasOne,
    user: Field::HasOne,
    photos: Field::HasMany,
    tags: Field::HasMany,
    taggings: Field::HasMany,
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
    id: Field::Number,
    name: Field::String,
    address: Field::String,
    overview: Field::Text,
    employees: Field::Number,
    teamsize: Field::Number,
    website: Field::String,
    twitter: Field::String,
<<<<<<< HEAD
    logo: Field::String,
    published: Field::Boolean,
    photos: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
=======
    published: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    lat: Field::Number.with_options(decimals: 2),
    long: Field::Number.with_options(decimals: 2),
    icon: Field::String,
    header: Field::String,
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
<<<<<<< HEAD
    :address,
    :overview,
=======
    :published,
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
<<<<<<< HEAD
=======
    :manager,
    :user,
    :photos,
    :tags,
    :taggings,
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
    :id,
    :name,
    :address,
    :overview,
    :employees,
    :teamsize,
    :website,
    :twitter,
<<<<<<< HEAD
    :logo,
    :published,
    :photos,
    :created_at,
    :updated_at,
=======
    :published,
    :created_at,
    :updated_at,
    :lat,
    :long,
    :icon,
    :header,
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :address,
    :overview,
    :employees,
    :teamsize,
    :website,
    :twitter,
<<<<<<< HEAD
    :logo,
    :published,
    :photos,
=======
    :published,
    :lat,
    :long,
    :icon,
    :header,
    :manager,
    :user,
    :photos,
    :tags,
    :taggings,
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
  ].freeze

  # Overwrite this method to customize how organizations are displayed
  # across all pages of the admin dashboard.
  #
<<<<<<< HEAD
  # def display_resource(organization)
  #   "Organization ##{organization.id}"
  # end
=======
  def display_resource(organization)
    organization.name
  end
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
end
