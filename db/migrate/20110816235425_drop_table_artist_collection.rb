class DropTableArtistCollection < ActiveRecord::Migration
  def self.up
  	drop_table:artist_collections
  end

  def self.down
  	create_table:artist_collections
  end
end
