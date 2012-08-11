class Article < ActiveRecord::Base
  has_many :project_articles
  has_many :projects, :through => :project_articles

  validates :title, :presence => true

  # create and publish new article
  def self.publish(params)
    article = Article.new(params)
    article.save
    article
  end
end
