class CreateStudentMarks < ActiveRecord::Migration[6.0]
  def change
    create_table :student_marks do |t|
      t.integer :m1
      t.integer :m2
      t.integer :m3
      t.integer :total
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
