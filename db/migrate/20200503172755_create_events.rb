class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :cover
      t.text :description
      t.boolean :upcoming, default: true

      t.timestamps
    end
  end
end
