class AddBioToArtist < ActiveRecord::Migration
  def self.up
    add_column :artists, :bio, :text
  end

  def self.down
    remove_column :artists, :bio
  end
end
