class AddReceivedToPurchaseOrderLineItem < ActiveRecord::Migration
  def change
    add_column :purchase_order_line_items, :received, :boolean
  end
end
