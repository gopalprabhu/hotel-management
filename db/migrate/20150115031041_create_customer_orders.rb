class CreateCustomerOrders < ActiveRecord::Migration
  def change
    create_table :customer_orders do |t|

      t.timestamps
    end
  end
end
