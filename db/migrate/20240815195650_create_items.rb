class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.decimal :price, precision: 10, scale: 2, null: false
      t.string :photo, null: false

      t.timestamps
    end
  end
end
