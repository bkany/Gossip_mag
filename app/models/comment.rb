class Comment < ApplicationRecord
	belongs_to :potin
	belongs_to :user
	
	validates :title,
		presence: true,
		length: { minimum: 1, maximum: 25 }
		
	validates :content,
		presence: true
end
