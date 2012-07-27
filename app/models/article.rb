class Article < ActiveRecord::Base
  # create and publish new article
  def self.publish(params)
    article = Article.new(params)
    article.save
    article
  end
end
