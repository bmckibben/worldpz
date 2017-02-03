class ApplicationMailer < ActionMailer::Base
	default from: "do_not_reply@literallight.com"
	layout 'mailer'
end