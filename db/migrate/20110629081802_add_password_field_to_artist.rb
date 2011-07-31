class AddPasswordFieldToArtist < ActiveRecord::Migration
  def self.up
    add_column :artists, :encrypted_password, :string
  end

  def self.down
    remove_column :artists, :encrypted_password
  end
end
