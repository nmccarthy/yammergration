class AddJsPropertiesToOgo < ActiveRecord::Migration
  def change
    change_table :open_graph_objects do |t|
      t.string :embedfeed_network
      t.string :embedfeed_op_url
      t.string :embedfeed_op_type
      t.string :embedfeed_op_title
      t.string :embedfeed_op_image
      t.string :embedfeed_private
      t.string :embedlike_network
      t.string :embedlike_op_url
      t.string :embedlike_op_type
      t.string :embedlike_op_title
      t.string :embedlike_op_image
      t.string :embedlike_private
      t.string :embedfollow_network
      t.string :embedfollow_op_url
      t.string :embedfollow_op_type
      t.string :embedfollow_op_title
      t.string :embedfollow_op_image
      t.string :embedfollow_private
    end
  end
end
