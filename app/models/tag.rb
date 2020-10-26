class Tag < ApplicationRecord
	has_many :potins, through: :taggossips
end
