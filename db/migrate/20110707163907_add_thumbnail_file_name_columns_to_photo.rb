class AddThumbnailFileNameColumnsToPhoto < ActiveRecord::Migration
  def self.up
    add_column :photos, :thumbnail, :string
    add_column :photos, :filename, :string
  end

  def self.down
    remove_column :photos, :filename
    remove_column :photos, :thumbnail
  end
end
