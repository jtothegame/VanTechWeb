require 'news_api'

class ArticlesController < ApplicationController
  def index
<<<<<<< HEAD
=======
    # an example of how to grab all the news stuff
    search_terms = NewsSearchTerm.all

    search_terms.each do |term|
      api = NewsApi.new
      articles = api.articles('techcrunch')

      # puts articles['articles']

      articles['articles'].each do |article|
        @article = Article.new article
        puts 'woo' if @article.save
      end
    end
>>>>>>> 011b4be37d3641ff9f541b29728538be01f99a07
  end
end
