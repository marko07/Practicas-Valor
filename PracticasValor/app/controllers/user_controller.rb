class UserController < ApplicationController
  
  layout 'application'
  before_filter :is_user_authenticate
  
  
end
