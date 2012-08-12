class HomeController < ApplicationController
  def index
    @article = ArticleDecorator.find_by_id(Settings.team_description_article_id)
  end
end
