class CreateArtistCollections < ActiveRecord::Migration
  def self.up
    create_table :artist_collections do |t|
    	t.integer :artist_id

      t.timestamps
    end
  end

  def self.down
    drop_table :artist_collections
  end
end
