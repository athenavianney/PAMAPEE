class AddDepartmentToAnnouncements < ActiveRecord::Migration[5.2]
  def change
    add_column :announcements, :department, :string
  end
end
