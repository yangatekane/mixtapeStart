class AddSaltToArtists < ActiveRecord::Migration
  def self.up
    add_column :artists, :salt, :string
  end

  def self.down
    remove_column :artists, :salt
  end
end
