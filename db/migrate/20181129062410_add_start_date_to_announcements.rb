class AddStartDateToAnnouncements < ActiveRecord::Migration[5.2]
  def change
    add_column :announcements, :start_date, :date
  end
end
