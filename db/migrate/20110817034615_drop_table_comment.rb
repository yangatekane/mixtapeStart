class DropTableComment < ActiveRecord::Migration
  def self.up
  	drop_table :comments
  end

  def self.down
  	create_table :comments
  end
end
