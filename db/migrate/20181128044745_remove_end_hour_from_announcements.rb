class RemoveEndHourFromAnnouncements < ActiveRecord::Migration[5.2]
  def change
    remove_column :announcements, :end_hour, :time
  end
end
