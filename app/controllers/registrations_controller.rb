class RegistrationsController < Devise::RegistrationsController

  protected

def update_resource(resource, params)
      if params[:password].blank? && params[:password_confirmation].blank?
      resource.update_without_password(params)
  end
  end
end