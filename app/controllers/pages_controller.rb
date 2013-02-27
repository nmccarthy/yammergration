class PagesController < ApplicationController

  def home
  end

  def client_side_flow
  end

  def yammer_login
  end

  def yammer_success
    @user = User.find(params[:user_id])
  end

  def facebook_login
  end
  
  def facebook_auth_results
    user = User.find_by_id(params[:user_id])
    @full_auth_blob = user.full_auth_blob
  end
  
  def client_side_flow
  end
  
  def change_env
    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :yammer, 'kvGDzE1a5A125MtYlVa96g', 'Zqep385R9PZ9gQoTab341cfljm9F06krlkORNl8U28'
      # provider :yammer, 
      #     'bOeqDSuoVig6d914x9HEGw', '3azFh60Pd6MyD7uPNPwxi3PqmJ9m3oVYfqYCcnaC8s',
      #     {:client_options => {
      #       :site => 'https://www.staging.yammer.com'
      #     }}
    end
    return render :text => "success", :status => :success
  end
  
end