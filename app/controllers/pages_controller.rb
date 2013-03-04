class PagesController < ApplicationController

  def home
  end

  def client_side_flow
    @yammergration_yammer_production_client_id = client_app_credentials('yammergration_yammer_production_client_id')
  end

  def client_side_flow_staging
    @yammergration_yammer_staging_client_id = client_app_credentials('yammergration_yammer_staging_client_id')
  end

  def yammer_login
  end

  def login_success
    @user = User.find(params[:user_id])
  end

  def facebook_login
  end
  
  def log_in_with_yammer_button
    @yammergration_yammer_production_client_id = client_app_credentials('yammergration_yammer_production_client_id')
  end
  
  def log_in_with_yammer_button_staging
    @yammergration_yammer_staging_client_id = client_app_credentials('yammergration_yammer_staging_client_id')
  end

end