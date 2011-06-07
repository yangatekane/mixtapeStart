class AddProfileToArtist < ActiveRecord::Migration
  def self.up
    add_column :artists, :name, :string
    add_column :artists, :genre, :string
    add_column :artists, :record_label, :string
    add_column :artists, :artist_type, :string
    add_column :artists, :website, :string
    add_column :artists, :rating, :string
    add_column :artists, :email, :string
    add_column :artists, :encrypted_password, :string
    add_column :artists, :salt, :string
  end

  def self.down
    remove_column :artists, :salt
    remove_column :artists, :encrypted_password
    remove_column :artists, :email
    remove_column :artists, :rating
    remove_column :artists, :website
    remove_column :artists, :artist_type
    remove_column :artists, :record_label
    remove_column :artists, :genre
    remove_column :artists, :name
  end
end
