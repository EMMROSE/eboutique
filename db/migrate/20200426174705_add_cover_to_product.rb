class AddCoverToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :cover, :string
  end
end
