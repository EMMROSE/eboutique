class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :sku
      t.string :photo
      t.monetize :price
      t.string :category
      t.string :brand
      t.integer :quantity, default: 1

      t.timestamps
    end
  end
end
