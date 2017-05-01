require 'news_api'

class ArticlesController < ApplicationController
  def index

    Article.delete_all

    # an example of how to grab all the news stuff
    search_terms = NewsSearchTerm.all

    search_terms.each do |term|
      api = NewsApi.new
      articles = api.articles(term.name)

      articles['articles'].each do |article|
        article = Article.new article
        puts 'woo' if article.save
      end
    end

    @articles = Article.all.page params[:page]
  end
end
