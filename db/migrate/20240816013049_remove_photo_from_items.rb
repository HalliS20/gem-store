class RemovePhotoFromItems < ActiveRecord::Migration[7.2]
  def up
    remove_column :items, :photo if column_exists?(:items, :photo)
  end

  def down
    add_column :items, :photo, :string unless column_exists?(:items, :photo)
  end
end