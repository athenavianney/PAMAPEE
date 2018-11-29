class AddCvToAnnouncements < ActiveRecord::Migration[5.2]
  def change
    add_column :announcements, :cv, :text
  end
end
