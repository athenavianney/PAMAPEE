class AddLengthToAnnouncements < ActiveRecord::Migration[5.2]
  def change
    add_column :announcements, :length, :integer
  end
end
