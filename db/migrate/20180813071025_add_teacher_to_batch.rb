class AddTeacherToBatch < ActiveRecord::Migration[5.1]
  def change
    add_reference :batches, :teacher, foreign_key: true
  end
end
