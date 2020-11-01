class User < ApplicationRecord
	belongs_to :city
	has_many :potins
	has_many :comments
	has_secure_password
	
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
		
	validates :password_digest,
		presence: true
		
	def remember(remember_token)
    remember_digest = BCrypt::Password.create(remember_token)
    self.update(remember_digest: remember_digest)
  end

end


