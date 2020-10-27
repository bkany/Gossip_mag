class User < ApplicationRecord
	has_many :potins
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	
	validates :first_name,
		presence: true
	
	validates :last_name,
		presence: true
	
	validates :email,
		presence: true,
		uniqueness: { case_sensitive: false },
		length: { minimum: 4, maximum: 254 },
		format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Please enter a valide email"  }
end


