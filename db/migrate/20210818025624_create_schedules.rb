class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.date :schedule_date,null:false
      t.time :start_time,null:false
      t.time :stop_time,null:false
      t.integer :reservation,null:false
      t.integer :participation,null:false
      t.timestamps
    end
  end
end
