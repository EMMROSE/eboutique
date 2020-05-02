class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :sku
      t.string :photo
      t.monetize :price


      t.timestamps
    end
  end
end