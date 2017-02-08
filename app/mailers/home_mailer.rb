class HomeMailer < ApplicationMailer

  def send_contact_email(email_name,email_address,email_message)

  	@email_name = email_name
  	@email_address = email_address
  	@email_message = email_message

    mail(to: "mckibben@att.net", subject: "Contact from WorldPz")

  end

end