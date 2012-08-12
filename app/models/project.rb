class Project < ActiveRecord::Base
  has_many :project_articles
  has_many :articles, :through => :project_articles

  # create and publish new project and description article
  # using specified project name and description
  def self.publish(name, description)
  	transaction do
      pa = ProjectArticle.new()
      pa.project = Project.create(name: name)
    	pa.article = Article.create(
        content: description,
        title: I18n.t("project.article.overview"),
      )
      pa.article_type = "description"
      pa.save()
      pa.project # return created project
    end
  end

  # returns description article
  def description_article
  	articles.first
  end

  # returns string representation of project
  def to_s
    name
  end
end
