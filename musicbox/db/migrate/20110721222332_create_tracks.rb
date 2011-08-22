class CreateTracks < ActiveRecord::Migration
  def self.up
  	create_table :tracks do |t|
  			t.integer :size
  			t.integer :parent_id
  			t.integer :artist_id
  			t.string  :content_type
  			t.string  :filename
    			
  			t.timestamps
  		end
  end

  def self.down
  	drop_table :tracks
  end
end
