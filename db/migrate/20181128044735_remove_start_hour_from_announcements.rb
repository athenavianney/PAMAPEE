class RemoveStartHourFromAnnouncements < ActiveRecord::Migration[5.2]
  def change
    remove_column :announcements, :start_hour, :time
  end
end
