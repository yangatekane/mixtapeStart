class AddColumnsToArtist < ActiveRecord::Migration
  def self.up
    add_column :artists, :genre, :string
    add_column :artists, :record_label, :string
    add_column :artists, :website, :string
    add_column :artists, :artist_type, :string
    add_column :artists, :username, :string
  end

  def self.down
    remove_column :artists, :username
    remove_column :artists, :artist_type
    remove_column :artists, :website
    remove_column :artists, :record_label
    remove_column :artists, :genre
  end
end
