class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.belongs_to :order, index: true
      t.belongs_to :product, index: true
      t.timestamps
    end
  end
end
