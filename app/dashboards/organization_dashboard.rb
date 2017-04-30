require "administrate/base_dashboard"

class OrganizationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    manager: Field::HasOne,
    user: Field::HasOne,
    tags: Field::HasMany,
    taggings: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    address: Field::String,
    overview: Field::Text,
    employees: Field::Number,
    teamsize: Field::Number,
    website: Field::String,
    twitter: Field::String,
    logo: Field::String,
    published: Field::Boolean,
    photos: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    lat: Field::Number.with_options(decimals: 2),
    long: Field::Number.with_options(decimals: 2),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :manager,
    :user,
    :tags,
    :taggings,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :manager,
    :user,
    :tags,
    :taggings,
    :id,
    :name,
    :address,
    :overview,
    :employees,
    :teamsize,
    :website,
    :twitter,
    :logo,
    :published,
    :photos,
    :created_at,
    :updated_at,
    :lat,
    :long,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :manager,
    :user,
    :tags,
    :taggings,
    :name,
    :address,
    :overview,
    :employees,
    :teamsize,
    :website,
    :twitter,
    :logo,
    :published,
    :photos,
    :lat,
    :long,
  ].freeze

  # Overwrite this method to customize how organizations are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(organization)
  #   "Organization ##{organization.id}"
  # end
end
