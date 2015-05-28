class AddImageToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image, :string
    change_column :products, :price, :decimal
  end
end
