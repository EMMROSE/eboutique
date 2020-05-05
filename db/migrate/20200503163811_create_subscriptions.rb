class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
