class CreateWants < ActiveRecord::Migration
  def change
    create_table :wants do |t|
      t.string :wanter
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
