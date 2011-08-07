class AddEmailUniquenessIndex < ActiveRecord::Migration
  def self.up
	  add_index :artists,:email,:unique=>true
  end

  def self.down
	  remove_index :artists,:email
  end
end
