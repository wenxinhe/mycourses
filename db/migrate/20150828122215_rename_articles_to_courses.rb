class RenameArticlesToCourses < ActiveRecord::Migration
  def change
  	rename_table :articles, :courses
  end
end
