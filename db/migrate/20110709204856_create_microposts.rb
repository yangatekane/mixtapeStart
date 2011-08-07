class CreateMicroposts < ActiveRecord::Migration
  def self.up
    create_table :microposts do |t|
      t.integer :artist_id
      t.string :content

      t.timestamps
    end
  end

  def self.down
    drop_table :microposts
  end
end
