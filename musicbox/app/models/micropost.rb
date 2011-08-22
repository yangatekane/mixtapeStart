class Micropost < ActiveRecord::Base
	attr_accessible :content

	belongs_to :artist
	belongs_to :track
	validates :content, :presence => true, :length =>{:maximum =>140}
	validates :artist_id, :presence => true

	default_scope :order => 'microposts.created_at DESC'
end
