class ProjectArticle < ActiveRecord::Base
  belongs_to :project
  belongs_to :article
end
