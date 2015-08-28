class RenameArticleId < ActiveRecord::Migration
  def change
  	rename_column :comments, :article_id, :course_id
  end
end
