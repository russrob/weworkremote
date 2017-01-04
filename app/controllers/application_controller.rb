class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
  def configure_permitted_paramters
  	devise_parameter_sanitizer.for(:account_update) << :email << :phone_number << :description << :password
  	
  end
end
