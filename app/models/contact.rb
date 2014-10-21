class Contact
	include ActiveModel::Model
	attr_accessor :from_name, :from_email, :message

	validates :from_name, :from_email, :message, presence: true
end
