class OpenGraphObject < ActiveRecord::Base
  attr_accessible :description, :image, :object_type, :title, :og_site_name, :og_image, :og_description, :og_title, :og_type, :og_url
end
