class DropTableMicropost < ActiveRecord::Migration
  def self.up
	  drop_table :microposts
  end

  def self.down
	  create_table:micropost
  end
end
