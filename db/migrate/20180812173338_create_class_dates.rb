class CreateClassDates < ActiveRecord::Migration[5.1]
  def change
    create_table :class_dates do |t|
      t.string :room
      t.string :topic
      t.datetime :class_time

      t.timestamps
    end
  end
end
