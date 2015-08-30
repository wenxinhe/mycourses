class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :text
      t.string :no

      t.timestamps null: false
    end
  end
end
