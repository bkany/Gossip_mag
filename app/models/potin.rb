class Potin < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_many :tags, through: :taggossips
	
	validates :title,
		presence: true,
		length: { minimum: 3, maximum: 14 }
		
	validates :content,
		presence: true
end
