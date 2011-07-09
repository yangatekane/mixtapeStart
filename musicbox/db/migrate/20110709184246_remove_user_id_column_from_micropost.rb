class RemoveUserIdColumnFromMicropost < ActiveRecord::Migration
  def self.up
    remove_column :microposts, :user_id
  end

  def self.down
    add_column :microposts, :user_id, :integer
  end
end
