class AddBatchToClassDate < ActiveRecord::Migration[5.1]
  def change
    add_reference :class_dates, :batch, foreign_key: true
  end
end
