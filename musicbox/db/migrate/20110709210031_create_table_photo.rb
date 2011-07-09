class CreateTablePhoto < ActiveRecord::Migration
  def self.up
	  create_table :photos do |t|
		  t.integer :artist_id, :size, :width, :height

		  t.string  :content_type, :thumbnail, :filename
   			end
	  end

  def self.down
	  drop_table :photos
  end
end
