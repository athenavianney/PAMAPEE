class CreateGroupsStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :groups_students do |t|
      t.integer :student_id
      t.integer :group_id
    end
  end
end
