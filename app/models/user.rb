class User
	include Mongoid::Document
	include Mongoid::Timestamps

	attr_accessor :password, :password_confirmation

	field :id, type: String

	field :name, type: String
	field :email, type: String

	field :salt, type: String
	field :pwd, type: String

	field :code, type: String
	field :expires_at, type: String

	before_save :encrypt_password

	def authenticate(password)
		self.pwd == BCrypt::Engine.hash_secret(password, self.pwd)
	end

	private

	def encrypt_password
		if password.present?
			self.salt = BCrypt::Engine.generate_salt
			self.pwd = BCrypt::Engine.hash_secret(password, self.salt)
		end
	end
end