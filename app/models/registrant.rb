class Registrant
	include Mongoid::Document

	field :id, type: String
	field :email, type: String
	field :expires_at, type: Time
end