class ChangeCvName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :announcements, :cv, :cv_resume
  end
end
