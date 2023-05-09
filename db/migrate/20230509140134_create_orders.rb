class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|

      t.string :name
      t.string :postal_code
      t.string :address
      t.integer :payment_method
      t.integer :price
      t.integer :status
      t.integer :postage
      
      t.timestamps
    end
  end
end
