class DeleteArtistTable < ActiveRecord::Migration
  def self.up
	  drop_table :artists
  end

  def self.down
	  create_table :artists
  end
end
