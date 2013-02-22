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
  
end