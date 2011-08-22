<<<<<<< HEAD
class DropTableMicropost < ActiveRecord::Migration
=======
class DropTableMicroposts < ActiveRecord::Migration
>>>>>>> eb2b69e19f0aba86f85859414b8a6260d7286162
  def self.up
	  drop_table :microposts
  end

  def self.down
<<<<<<< HEAD
	  create_table:micropost
=======
	  create_table:microposts
>>>>>>> eb2b69e19f0aba86f85859414b8a6260d7286162
  end
end
