class RemoveThumbailErrorColumnFromPhoto < ActiveRecord::Migration
  def self.up
    remove_column :photos, :thumbail
  end

  def self.down
    add_column :photos, :thumbail, :string
  end
end
