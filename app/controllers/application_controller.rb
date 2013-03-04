class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :client_app_credentials
  
  def client_app_credentials(app_choice)
    case app_choice
      when "yammergration_yammer_production_client_id"
        ENV['YAMMERGRATION_YAMMER_PRODUCTION_CLIENT_ID']
      when "yammergration_yammer_staging_client_id"
        ENV['YAMMERGRATION_YAMMER_STAGING_CLIENT_ID']
    end
  end

end
