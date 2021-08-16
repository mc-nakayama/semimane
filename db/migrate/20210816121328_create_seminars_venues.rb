class CreateSeminarsVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :seminars_venues do |t|
      t.references :seminar,foreign_key:true
      t.references :venue,foreign_key:true
      t.timestamps
    end
  end
end
