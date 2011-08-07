class AddPublicNameColumnToTrack < ActiveRecord::Migration
  def self.up
    add_column :tracks, :public_filename, :string
  end

  def self.down
    remove_column :tracks, :public_filename
  end
end
