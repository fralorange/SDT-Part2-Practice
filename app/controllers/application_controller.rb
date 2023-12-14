class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to errors_not_authorized_path, :alert => exception.message
  end
end
