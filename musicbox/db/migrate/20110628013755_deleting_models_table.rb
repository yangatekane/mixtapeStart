class DeletingModelsTable < ActiveRecord::Migration
  def self.up
	  drop_table :models
  end

  def self.down
	  create_table :models
  end
end
