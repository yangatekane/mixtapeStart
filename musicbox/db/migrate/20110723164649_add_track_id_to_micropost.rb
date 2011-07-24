class AddTrackIdToMicropost < ActiveRecord::Migration
  def self.up
    add_column :microposts, :track_id, :integer
  end

  def self.down
    remove_column :microposts, :track_id
  end
end
