class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.references :user, null: true, foreign_key: true
      t.string :delivery, default: "en boutique"

      t.timestamps
    end
  end
end
