class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.belongs_to :service, foreign_key: true
      t.string :title
      t.string :description
      t.integer :cost
      t.attachment :image
      t.timestamps
    end
  end
end
