class CreateOpenGraphObjects < ActiveRecord::Migration
  def change
    create_table :open_graph_objects do |t|
      t.string :title
      t.string :object_type
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
