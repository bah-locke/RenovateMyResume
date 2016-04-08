class AdminController < ApplicationController
  skip_before_filter :authorize
  
  def index                           
    @resumes = Resume.where('user_id = ?',session[:user_id])
    
    @total_resumes = Resume.where("resumes.user_id = ?", session[:user_id]).count
    
    @user_name = session[:fname] + " " + session[:lname]
  end
end
