class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :status
      t.string :email
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :checkout_session_id
      t.monetize :amount_cents
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
