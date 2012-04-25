class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.string :status
      t.string :category_id

      t.timestamps
    end
  end
end
