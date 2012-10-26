class OpenGraphObject < ActiveRecord::Base
  attr_accessible :description, :image, :object_type, :title, :og_site_name, :og_image, :og_description, :og_title, :og_type, :og_url, :embedfeed_network, :embedfeed_op_url, :embedfeed_op_type, :embedfeed_op_title, :embedfeed_op_image, :embedfeed_private, :embedlike_network, :embedlike_op_url, :embedlike_op_type, :embedlike_op_title, :embedlike_op_image, :embedlike_private, :embedfollow_network, :embedfollow_op_url, :embedfollow_op_type, :embedfollow_op_title, :embedfollow_op_image, :embedfollow_private
end