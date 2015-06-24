class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.references :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :images, :products
  end
end
