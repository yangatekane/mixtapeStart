class RemoveColumnsFromTrack < ActiveRecord::Migration
  def self.up
    remove_column :tracks, :name
    remove_column :tracks, :composer
  end

  def self.down
    add_column :tracks, :composer, :string
    add_column :tracks, :name, :string
  end
end
