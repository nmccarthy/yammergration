class StoreFacebookAuthBlob < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.text :full_auth_blob
    end
  end
end
