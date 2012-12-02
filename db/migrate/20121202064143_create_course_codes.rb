class CreateCourseCodes < ActiveRecord::Migration
  def change
    create_table :course_codes do |t|
      t.integer :course_id
      t.integer :code
      t.string :section
      t.string :day
      t.string :times
      t.string :teacher

      t.timestamps
    end
  end
end
