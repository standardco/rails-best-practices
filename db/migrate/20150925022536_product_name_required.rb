class ProductNameRequired < ActiveRecord::Migration
  def change
    change_column_null :products, :name, false
  end
end
