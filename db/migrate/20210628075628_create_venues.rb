class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name, unique:true,index:true,null:false
      t.string :address,null:false
      t.string :tel
      t.text :memo
      t.text :image
      t.timestamps
    end
  end
end
