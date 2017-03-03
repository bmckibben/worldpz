class HomeController < ApplicationController
  
  def index
    @recipes = Recipe.where("category_id = 1 and sort_order > 0").order(:sort_order)
    @blog = Blog.order(created_at: :desc).first
    @blogs = Blog.where("publish=1").order(created_at: :desc).limit(5)
  	render layout: false
  end
  
  def home
  	
  end  

  def contact_email
  	HomeMailer.send_contact_email(params[:email_name],params[:email_address],params[:email_message]).deliver_now
  	render :nothing => true, :status => 200
  end	

  # GET /recipes/1
  # GET /recipes/1.json
  def display_recipe
    @recipe = Recipe.find(params[:id])
  end

end
