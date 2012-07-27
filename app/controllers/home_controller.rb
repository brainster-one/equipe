class HomeController < ApplicationController
  def index
    @team_info_article = ArticleDecorator.find_by_id(Settings.team_description_article_id)
  end
end
