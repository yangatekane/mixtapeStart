class AddLocationToArtist < ActiveRecord::Migration
  def self.up
    add_column :artists, :location, :string
  end

  def self.down
    remove_column :artists, :location
  end
end
