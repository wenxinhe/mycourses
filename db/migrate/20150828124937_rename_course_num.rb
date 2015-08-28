class RenameCourseNum < ActiveRecord::Migration
  def change
  	rename_column :courses, :course_num, :no
  end
end
