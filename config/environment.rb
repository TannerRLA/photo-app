# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
	:address => 'smtp.sendgird.net',
	:port => '587',
	:autherntication => :plain, 
	:user_name => ENV['SENDGIRD_USERNAME'],
	:password => ENV['SENDGRID_PASSWORD'], 
	:domain => 'heroku.com',
	:enable_starttls_auto => true
}
