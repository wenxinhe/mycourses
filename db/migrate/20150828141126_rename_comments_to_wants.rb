class RenameCommentsToWants < ActiveRecord::Migration
  def change
  	rename_table :comments, :wants
  end
end
