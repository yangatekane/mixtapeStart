class RemoveNameFromArtists < ActiveRecord::Migration
  def self.up
	  remove_column :artists, :name
  end

  def self.down
	  add_column :artists, :name, :string
  end
end
