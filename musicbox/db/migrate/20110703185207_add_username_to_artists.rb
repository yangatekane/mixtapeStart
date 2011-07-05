class AddUsernameToArtists < ActiveRecord::Migration
  def self.up
    add_column :artists, :username, :string
  end

  def self.down
    remove_column :artists, :username
  end
end
