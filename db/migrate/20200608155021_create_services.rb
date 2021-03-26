	class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :title
      t.text :detail
      t.integer :price
      t.attachment :image
      t.timestamps
    end
  end
  
end
