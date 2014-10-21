# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
FootballManagementSystem::Application.initialize!

FootballManagementSystem::Application.configure do
	config.action_mailer.delivery_method = :smtp

	#config.action_mailer.smtp_settings = {
		#address:  					"",
		#port: 							587,
		#domain: 						"testdomain.com",
		#authentication: 		"plain",
		#user_name: 				"",
		#password: 					"",
		#enable_starttls_auto: true
	#}
end