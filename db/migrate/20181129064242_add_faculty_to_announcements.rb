class AddFacultyToAnnouncements < ActiveRecord::Migration[5.2]
  def change
    add_column :announcements, :faculty, :string
  end
end
