class CreateSeminarsVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :seminars_venues do |t|

      t.timestamps
    end
  end
end
