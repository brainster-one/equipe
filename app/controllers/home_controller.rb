class HomeController < ApplicationController
  def index
    @team_info_article = ArticleDecorator.first()
  end
end
