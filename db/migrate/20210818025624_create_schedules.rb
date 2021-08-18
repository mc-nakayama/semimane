class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.date :schedule_date,null:false
      t.time :schedule_time,null:false
      t.integer :reservation,null:false
      t.integer :participation,null:false
      t.timestamps
    end
  end
end
