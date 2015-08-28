class RenameCommenterToWanter < ActiveRecord::Migration
  def change
  	rename_column :wants, :commenter, :wanter
  end
end
