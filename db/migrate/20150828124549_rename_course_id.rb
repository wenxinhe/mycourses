class RenameCourseId < ActiveRecord::Migration
  def change
  	rename_column :courses, :CourseId, :course_num
  end
end
