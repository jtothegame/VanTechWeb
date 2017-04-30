require "administrate/base_dashboard"

class ArticleDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
<<<<<<< HEAD
    name: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
=======
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    title: Field::String,
    description: Field::String,
    url: Field::String,
    urlToImage: Field::String,
    publishedAt: Field::DateTime,
    author: Field::String,
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
<<<<<<< HEAD
    :name,
    :created_at,
    :updated_at,
=======
    :created_at,
    :updated_at,
    :title,
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
<<<<<<< HEAD
    :name,
    :created_at,
    :updated_at,
=======
    :created_at,
    :updated_at,
    :title,
    :description,
    :url,
    :urlToImage,
    :publishedAt,
    :author,
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
<<<<<<< HEAD
    :name,
=======
    :title,
    :description,
    :url,
    :urlToImage,
    :publishedAt,
    :author,
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
  ].freeze

  # Overwrite this method to customize how articles are displayed
  # across all pages of the admin dashboard.
  #
<<<<<<< HEAD
  # def display_resource(article)
  #   "Article ##{article.id}"
  # end
=======
  def display_resource(article)
    article.title
  end
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
end
