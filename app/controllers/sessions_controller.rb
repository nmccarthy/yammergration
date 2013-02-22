class SessionsController < ApplicationController
  def create
    # raise env["omniauth.auth"].to_yaml
    auth = request.env["omniauth.auth"]
    # user = User.find_by_provider_and_uid(auth["provider"], auth["uid"].to_s) || User.create_with_omniauth(auth)
    # session[:user_id] = user.id
    
    user = User.create_with_omniauth(auth)
    redirect_to '/yammer/success?user_id=' + user.id.to_s, :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end