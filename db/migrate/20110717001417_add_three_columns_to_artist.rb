class AddThreeColumnsToArtist < ActiveRecord::Migration
  def self.up
    add_column :artists, :dob, :date
    add_column :artists, :gender, :string
    add_column :artists, :languages, :string
  end

  def self.down
    remove_column :artists, :languages
    remove_column :artists, :gender
    remove_column :artists, :dob
  end
end
