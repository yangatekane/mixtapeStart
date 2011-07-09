class AddArtistIdColumnToMicropost < ActiveRecord::Migration
  def self.up
    add_column :microposts, :artist_id, :integer
  end

  def self.down
    remove_column :microposts, :artist_id
  end
end
