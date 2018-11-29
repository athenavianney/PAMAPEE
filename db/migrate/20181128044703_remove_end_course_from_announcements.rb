class RemoveEndCourseFromAnnouncements < ActiveRecord::Migration[5.2]
  def change
    remove_column :announcements, :end_course, :date
  end
end
