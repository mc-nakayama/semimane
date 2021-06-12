class CreateSeminars < ActiveRecord::Migration[6.0]
  def change
    create_table :seminars do |t|
      t.string :name, unique:true, index:true, null:false
      t.string :style, null:false
      t.text :description, null:false
      t.timestamps
    end
  end
end
