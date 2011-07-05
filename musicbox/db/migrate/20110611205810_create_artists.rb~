class CreateArtists < ActiveRecord::Migration
  def self.up
    create_table :artists do |t|
      t.string :name
      t.string :email
      t.string :genre
      t.string :category
      t.string :record_label
      t.string :artist_type
      t.string :website
      t.string :rating

      t.timestamps
    end
  end

  def self.down
    drop_table :artists
  end
end
