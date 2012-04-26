module ApplicationHelper

  def resource
    @resource ||= User.new
  end
  
  def resource_forgot
    @resource_forgot ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
end
