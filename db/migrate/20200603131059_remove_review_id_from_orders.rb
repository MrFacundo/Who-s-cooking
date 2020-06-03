class RemoveReviewIdFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :review_id, :foreign_key
  end
end
