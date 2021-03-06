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
      t.string :deliverable, default: "false"
      t.integer :quantity
      # t.boolean :available, default: true

      t.timestamps
    end
  end
end
