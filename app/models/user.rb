class User < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :email, presence: true, uniqueness: { case_sensitive: false }
	validates :password, length: { minimum: 6 }
	before_save { self.email = email.downcase }
	has_secure_password
end
