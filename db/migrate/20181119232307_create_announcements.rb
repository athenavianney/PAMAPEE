class CreateAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :announcements do |t|
      t.string :course_name
      t.string :instructor
      t.date :start_registration
      t.date :end_registration
      t.date :start_course
      t.date :end_course
      t.time :start_hour
      t.time :end_hour
      t.text :location
      t.text :summary

      t.timestamps
    end
  end
end
