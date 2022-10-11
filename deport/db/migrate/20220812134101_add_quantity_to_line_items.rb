class AddQuantityToLineItems < ActiveRecord::Migration[7.0]
  def self.up
    add_column :line_items, :quantity, :integer, :default => 1
  end
  def self.down
    # split items with quantity>1 into multiple items
    LineItem.where("quantity>1").each do |line_item|
      # add individual items
      line_item.quantity.times do
        LineItem.create :cart_id => line_item.cart_id,
                        :product_id => line_item.product_id, :quantity => 1
      end
      line_item.destroy
    end
  end
end
