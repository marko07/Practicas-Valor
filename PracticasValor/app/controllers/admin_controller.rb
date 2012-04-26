class AdminController < ApplicationController
  
  layout 'application'
  before_filter :is_user_authenticate
  
  def login
    user = User.find(:first, :conditions => ["email = ?", params[:email]])
    valid = user.valid_password?(params[:password]) unless user.nil?
    
    if valid
      redirect_to :action => :index
    else
      redirect_to :controller => :general, :action => :show
    end
  end
  
  def index
    
  end
  
end
