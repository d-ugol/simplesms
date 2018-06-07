class TwilioTextMessenger
	attr_reader :phone
	attr_reader :message

	def initialize( phone, message)
		@phone = phone
		@message = message
	end

	def call
		client = Twilio::REST::Client.new
		client.messages.create( {
			from: Rails.application.secrets.twilio_phone_number,
			to: @phone,
			body: @message
			})
	end
end
