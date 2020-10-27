class Tag < ApplicationRecord
	has_many :potins, through: :taggossips
	
	validates :title,
			presence: true
end
