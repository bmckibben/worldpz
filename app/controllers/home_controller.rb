class HomeController < ApplicationController
  def index
  	render layout: false
  end
  
  def home
  	
  end  

  def contact_email
  	HomeMailer.send_contact_email(params[:email_name],params[:email_address],params[:email_message]).deliver_now
  	render :nothing => true, :status => 200
  end	
end
