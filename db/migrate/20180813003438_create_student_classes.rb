class CreateStudentClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :student_classes do |t|
      t.references :student, foreign_key: true
      t.references :class_date, foreign_key: true

      t.timestamps
    end
  end
end
