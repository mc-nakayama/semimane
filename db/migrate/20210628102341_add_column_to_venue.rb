class AddColumnToVenue < ActiveRecord::Migration[6.0]
  def change
    add_column :venues, :postal_code, :string, null:false
  end
end
