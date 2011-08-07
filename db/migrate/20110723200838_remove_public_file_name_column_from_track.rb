class RemovePublicFileNameColumnFromTrack < ActiveRecord::Migration
  def self.up
    remove_column :tracks, :public_filename
  end

  def self.down
    add_column :tracks, :public_filename, :string
  end
end
