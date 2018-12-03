class AddStatusToGroupsStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :groups_students, :status, :string
  end
end
