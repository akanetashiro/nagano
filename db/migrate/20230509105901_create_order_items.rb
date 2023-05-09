class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|

      t.integer :amount
      t.integer :price
      t.integer :production_status
      
      t.timestamps
    end
  end
end
