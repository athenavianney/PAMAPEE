class RemoveStartCourseFromAnnouncements < ActiveRecord::Migration[5.2]
  def change
    remove_column :announcements, :start_course, :date
  end
end
