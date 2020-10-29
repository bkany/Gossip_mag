class Comment < ApplicationRecord
	belongs_to :potin
	belongs_to :user
	
	validates :title,
		presence: true,
		length: { minimum: 3, maximum: 14 }
		
	validates :content,
		presence: true
end
