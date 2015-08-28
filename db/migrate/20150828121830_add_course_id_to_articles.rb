class AddCourseIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :course_id, :string
  end
end
