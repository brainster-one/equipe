class CreateProjectArticles < ActiveRecord::Migration
  def change
    create_table :project_articles do |t|
      t.references :project
      t.references :article
      t.string :article_type
      t.integer :order_id
    end
    add_index :project_articles, :project_id
    add_index :project_articles, :article_id
  end
end
