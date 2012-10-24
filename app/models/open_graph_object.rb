class OpenGraphObject < ActiveRecord::Base
  attr_accessible :description, :image, :object_type, :title
end
