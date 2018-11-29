class AddClassroomToAnnouncements < ActiveRecord::Migration[5.2]
  def change
    add_column :announcements, :classroom, :string
  end
end
