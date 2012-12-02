class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_number
      t.string :name
      t.boolean :offered_now

      t.timestamps
    end
  end
end
