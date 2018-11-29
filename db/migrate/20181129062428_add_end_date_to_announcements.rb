class AddEndDateToAnnouncements < ActiveRecord::Migration[5.2]
  def change
    add_column :announcements, :end_date, :date
  end
end
