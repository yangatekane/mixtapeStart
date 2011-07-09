class RemoveSomeColummnsFromPhoto < ActiveRecord::Migration
  def self.up
	  remove_column :photos, :file_name, :string
  end

  def self.down
	  add_column :photos, :file_name, :string
  end
end
