class AddCloumnSchedules < ActiveRecord::Migration[6.0]
  def change
    add_reference :schedules, :seminar, index: true
    add_reference :schedules, :venue, index: true
  end
end
