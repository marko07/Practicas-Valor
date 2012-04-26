class ApplicationController < ActionController::Base
  protect_from_forgery
  
  
  protect_from_forgery
  
  #validate is a user log in
  def is_user_authenticate

    if request.xhr?
      render :js => "window.location = '/'" if current_user.nil?
    else
      redirect_to '/' if current_user.nil?
    end
    
  end
  
  def check_services_authentification_token
    
  end
  
  protected
  
  #validate the precense of the authentication token
  def validate_authentication_token
    
    @user = User.find_by_services_authentification_token(params[:auth_token])
    bad_request if @user.nil?
  end
  
  # A method that renders a Record Not Found error message.
  # This method can be used for rescue_from in all the services  
  def record_not_found
    render :json => {:success=>false, :error_code => 404, :error_msg=>"Record not Found"}
  end 
  
  # A method that renders a Bad Request error message.
  def bad_request
    render :json => {:success=>false, :error_code=> 400, :error_msg=>"Bad Request"}
  end
  
  # reponse with a especific error code and message
  def error_response(code, message)
    render :json => {:success=>false,:error_code => code,:error_msg => message}
  end
  
end
