class AddGenreLabelSiteToArtists < ActiveRecord::Migration
  def self.up
	  add_column :artists, :genre, :string
	  add_column :artists, :record_label, :string
	  add_column :artists, :website, :string
	  add_column :artists, :artist_type, :string
  end

  def self.down
	  remove_column  :artists,:genre
	  remove_column  :artists,:record_label
	  remove_column  :artists,:website
	  remove_column  :artists,:artist_type
  end
end
