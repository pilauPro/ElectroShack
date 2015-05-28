class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :password
      t.timestamps
    end
  end
end
