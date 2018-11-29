class ChangeCourseName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :announcements, :course_name, :name_program
  end
end
