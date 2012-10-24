class AddOgMetadataToOpenGraphObjects < ActiveRecord::Migration
  def change
    change_table :open_graph_objects do |t|
      t.string :og_site_name
      t.string :og_image
      t.string :og_description
      t.string :og_title
      t.string :og_type
      t.string :og_url
    end
  end
end
