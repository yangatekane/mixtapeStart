class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.integer :artist_id,:parent_id, :size, :width, :height

      t.string  :content_type, :file_name, :thumbail
      
      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
