class AddMicropostsTablewithTimeStamps < ActiveRecord::Migration
  def self.up
	  create_table :microposts do |t|
	   t.string :content
	   t.integer :artist_id
	   t.timestamps
	  end
	  add_index :microposts,:artist_id
  end

  def self.down
	  drop_table :micropots
  end
end
