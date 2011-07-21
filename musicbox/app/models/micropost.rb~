class Micropost < ActiveRecord::Base
	attr_accessible :content

	belongs_to :artist
	validates :content, :presence => true, :length =>{:maximum =>140}
	validates :artist_id, :presence => true

	default_scope :order => 'micropost.created_at DESC'
end
